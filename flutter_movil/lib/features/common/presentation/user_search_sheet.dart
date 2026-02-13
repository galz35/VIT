import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../common/data/user_repository.dart';
import '../../common/domain/empleado.dart';
import 'package:provider/provider.dart';
import '../../auth/presentation/auth_controller.dart';

class UserSearchSheet extends StatefulWidget {
  final Function(Empleado) onSelected;

  const UserSearchSheet({super.key, required this.onSelected});

  static Future<Empleado?> show(BuildContext context) {
    return showModalBottomSheet<Empleado>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.8,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (context, scrollController) => UserSearchSheet(
          onSelected: (e) => Navigator.pop(context, e),
        ),
      ),
    );
  }

  @override
  State<UserSearchSheet> createState() => _UserSearchSheetState();
}

class _UserSearchSheetState extends State<UserSearchSheet> {
  final _repo = UserRepository();
  final _searchCtrl = TextEditingController();

  List<Empleado> _allEmployees = [];
  List<Empleado> _filteredResults = [];
  bool _loading = false;
  bool _hasError = false;
  String _currentLabel = 'Todos los empleados';

  @override
  void initState() {
    super.initState();
    _loadAllEmployees();
  }

  /// Load ALL active employees from the API to populate the list immediately.
  /// Falls back to gerencia-based loading if the full list fails.
  void _loadAllEmployees() async {
    setState(() {
      _loading = true;
      _hasError = false;
    });

    try {
      // Strategy 1: Load all active employees from the API
      final allUsers = await _repo.getAllEmployees();

      if (allUsers.isNotEmpty) {
        if (mounted) {
          setState(() {
            _allEmployees = allUsers;
            _filteredResults = allUsers;
            _currentLabel = 'Todos los empleados (${allUsers.length})';
            _loading = false;
          });
        }
        return;
      }
    } catch (e) {
      debugPrint('⚠️ Could not load all employees: $e');
    }

    // Strategy 2: Fallback — load recents + gerencia
    try {
      final recents = await _repo.getRecents();
      List<Empleado> combined = [...recents];

      if (mounted) {
        final auth = context.read<AuthController>();
        final user = auth.user;
        if (user != null) {
          final g = user.gerencia.isNotEmpty
              ? user.gerencia
              : (user.departamento.isNotEmpty ? user.departamento : '');

          if (g.isNotEmpty) {
            final mUsers = await _repo.getEmployeesByDepartment(g);
            final existingIds = recents.map((e) => e.idUsuario).toSet();
            for (final u in mUsers) {
              if (!existingIds.contains(u.idUsuario)) {
                combined.add(u);
              }
            }
          }
        }
      }

      if (mounted && _searchCtrl.text.isEmpty) {
        setState(() {
          _allEmployees = combined;
          _filteredResults = combined;
          _currentLabel = combined.isEmpty
              ? 'Escribe para buscar'
              : 'Sugeridos (${combined.length})';
          _loading = false;
        });
      }
    } catch (e) {
      debugPrint('❌ Error loading fallback employees: $e');
      if (mounted) {
        setState(() {
          _loading = false;
          _hasError = true;
        });
      }
    }
  }

  void _onSearch(String query) async {
    if (query.isEmpty) {
      setState(() {
        _filteredResults = _allEmployees;
        _currentLabel = _allEmployees.isEmpty
            ? 'Escribe para buscar'
            : 'Todos los empleados (${_allEmployees.length})';
      });
      return;
    }

    // Local filter first (instant)
    final q = query.toLowerCase();
    final local = _allEmployees.where((e) {
      return e.nombreCompleto.toLowerCase().contains(q) ||
          (e.cargo?.toLowerCase().contains(q) ?? false) ||
          (e.area?.toLowerCase().contains(q) ?? false) ||
          (e.carnet?.toLowerCase().contains(q) ?? false);
    }).toList();

    setState(() {
      _filteredResults = local;
      _currentLabel = 'Resultados (${local.length})';
    });

    // If local results are insufficient and query is >= 2 chars, also search API
    if (local.length < 3 && query.length >= 2) {
      try {
        final apiResults = await _repo.search(query);
        if (mounted && _searchCtrl.text == query) {
          // Merge API results with local, avoiding duplicates
          final existingIds = local.map((e) => e.idUsuario).toSet();
          final merged = [...local];
          for (final r in apiResults) {
            if (!existingIds.contains(r.idUsuario)) {
              merged.add(r);
            }
          }
          setState(() {
            _filteredResults = merged;
            _currentLabel = 'Resultados (${merged.length})';
          });
        }
      } catch (e) {
        debugPrint('Error in API search: $e');
      }
    }
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2)),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDE9FE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(CupertinoIcons.person_2_fill,
                      color: Color(0xFF7C3AED), size: 20),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Asignar a persona',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                ),
              ],
            ),
          ),

          // Search field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchCtrl,
              autofocus: true,
              onChanged: _onSearch,
              decoration: InputDecoration(
                hintText: 'Buscar por nombre, cargo o área...',
                hintStyle: const TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xFF94A3B8),
                ),
                prefixIcon: const Icon(Icons.search, color: Color(0xFF64748B)),
                filled: true,
                fillColor: const Color(0xFFF8FAFC),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFE2E8F0))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFE2E8F0))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xFF7C3AED), width: 2)),
              ),
            ),
          ),

          // Label
          if (_filteredResults.isNotEmpty || _loading)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  Icon(Icons.people_outline, size: 14, color: Colors.grey[500]),
                  const SizedBox(width: 6),
                  Text(_currentLabel,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),

          // List
          Expanded(
            child: _loading
                ? const Center(
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(color: Color(0xFF7C3AED)),
                      SizedBox(height: 12),
                      Text('Cargando empleados...',
                          style: TextStyle(
                              fontFamily: 'Inter', color: Color(0xFF94A3B8))),
                    ],
                  ))
                : _hasError
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.wifi_off,
                                size: 48, color: Color(0xFFCBD5E1)),
                            const SizedBox(height: 8),
                            const Text(
                              'Error de conexión',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF64748B)),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'No se pudieron cargar los empleados',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  color: Color(0xFF94A3B8)),
                            ),
                            const SizedBox(height: 16),
                            TextButton.icon(
                              onPressed: _loadAllEmployees,
                              icon: const Icon(Icons.refresh),
                              label: const Text('Reintentar'),
                            ),
                          ],
                        ),
                      )
                    : _filteredResults.isEmpty
                        ? Center(
                            child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.search_off,
                                  size: 48, color: Color(0xFFCBD5E1)),
                              const SizedBox(height: 8),
                              Text(
                                _searchCtrl.text.isEmpty
                                    ? 'Escribe para buscar empleados'
                                    : 'No se encontraron resultados',
                                style: const TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF94A3B8)),
                              ),
                            ],
                          ))
                        : ListView.builder(
                            itemCount: _filteredResults.length,
                            itemBuilder: (context, index) {
                              final user = _filteredResults[index];
                              final initials = user.nombreCompleto.isNotEmpty
                                  ? user.nombreCompleto[0].toUpperCase()
                                  : '?';
                              final colors = [
                                const Color(0xFF7C3AED),
                                const Color(0xFF059669),
                                const Color(0xFF0284C7),
                                const Color(0xFFD97706),
                                const Color(0xFFDC2626),
                              ];
                              final color =
                                  colors[user.idUsuario % colors.length];

                              return InkWell(
                                onTap: () {
                                  _repo.saveRecent(user);
                                  widget.onSelected(user);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor:
                                            color.withValues(alpha: 0.1),
                                        child: Text(
                                          initials,
                                          style: TextStyle(
                                              color: color,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              user.nombreCompleto,
                                              style: const TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF0F172A),
                                              ),
                                            ),
                                            Text(
                                              '${user.cargo ?? 'Sin cargo'} • ${user.area ?? 'Sin área'}',
                                              style: const TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                color: Color(0xFF94A3B8),
                                              ),
                                            ),
                                            if (user.carnet != null &&
                                                user.carnet!.isNotEmpty)
                                              Text(
                                                'Carnet: ${user.carnet}',
                                                style: const TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 11,
                                                  color: Color(0xFFBDC5D0),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      const Icon(Icons.chevron_right,
                                          color: Color(0xFFCBD5E1)),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
          ),
        ],
      ),
    );
  }
}
