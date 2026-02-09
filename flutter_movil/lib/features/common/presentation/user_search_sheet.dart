
import 'package:flutter/material.dart';
import '../../common/data/user_repository.dart';
import '../../common/domain/empleado.dart';

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
  List<Empleado> _results = [];
  bool _loading = false;

  void _onSearch(String query) async {
    if (query.length < 2) {
      if (_results.isNotEmpty) setState(() => _results = []);
      return;
    }

    setState(() => _loading = true);
    final results = await _repo.search(query);
    if (mounted) {
      setState(() {
        _results = results;
        _loading = false;
      });
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
              decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(2)),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchCtrl,
              autofocus: true,
              onChanged: _onSearch,
              decoration: InputDecoration(
                hintText: 'Buscar persona...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
          ),

          Expanded(
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : _results.isEmpty 
                    ? Center(child: Text(_searchCtrl.text.length < 2 ? 'Escribe para buscar' : 'No se encontraron resultados'))
                    : ListView.builder(
                        itemCount: _results.length,
                        itemBuilder: (context, index) {
                          final user = _results[index];
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: Text(user.nombreCompleto.isNotEmpty ? user.nombreCompleto[0].toUpperCase() : '?'),
                            ),
                            title: Text(user.nombreCompleto),
                            subtitle: Text('${user.cargo ?? 'Sin cargo'} • ${user.area ?? 'Sin área'}'),
                            onTap: () {
                              widget.onSelected(user);
                            },
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}
