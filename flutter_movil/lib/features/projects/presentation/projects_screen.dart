import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/services.dart';

import '../../../core/network/api_client.dart';
import '../../../core/network/api_utils.dart';
import '../../common/data/offline_resource_service.dart';
import '../../home/presentation/home_shell.dart'; // MomentusAppBar
import 'project_detail_screen.dart';
import 'create_project_sheet.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  static const _cacheKey = 'projects_my';
  static const _offline = OfflineResourceService();

  late Future<OfflineListResult> _future;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _fetchProjects();
  }

  void _fetchProjects() {
    setState(() {
      _future = _offline.loadList(
        cacheKey: _cacheKey,
        remote: () async {
          final response = await ApiClient.dio.get('proyectos?limit=2000');
          return unwrapApiList(response.data);
        },
      );
    });
  }

  Future<void> _refresh() async {
    _fetchProjects();
    await _future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      // Usamos MomentusAppBar para header consistente y menú de perfil
      appBar: MomentusAppBar(
        title: 'Proyectos',
        subtitle: 'Gestión y seguimiento de proyectos',
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.add_circled,
                color: Color(0xFF059669), size: 28),
            onPressed: () {
              HapticFeedback.lightImpact();
              CreateProjectSheet.show(context, onCreated: _fetchProjects);
            },
          ),
        ],
      ),
      body: FutureBuilder<OfflineListResult>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _buildSkeleton();
          }

          final data = snapshot.data;
          if (data == null) {
            return Center(
              child: ElevatedButton(
                onPressed: _fetchProjects,
                child: const Text('Reintentar'),
              ),
            );
          }

          final allItems = data.items;
          final items = allItems.where((p) {
            // 1. Filter out deleted/cancelled projects
            final estado = (p['estado'] ?? '').toString().toLowerCase();
            if (estado == 'cancelado' ||
                estado == 'eliminado' ||
                estado == 'inactivo') {
              return false;
            }

            // 2. Search Query
            final q = _searchQuery.toLowerCase();
            if (q.isEmpty) return true;

            final nombre =
                (p['nombre'] ?? p['titulo'] ?? '').toString().toLowerCase();
            final desc = (p['descripcion'] ?? '').toString().toLowerCase();
            final area = (p['area'] ?? '').toString().toLowerCase();
            final gerencia = (p['gerencia'] ?? '').toString().toLowerCase();
            final creador = (p['creadorNombre'] ?? '').toString().toLowerCase();
            // estado already lowercase

            return nombre.contains(q) ||
                desc.contains(q) ||
                area.contains(q) ||
                gerencia.contains(q) ||
                creador.contains(q) ||
                estado.contains(q);
          }).toList();

          return Column(
            children: [
              if (data.fromCache)
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: const Color(0xFFFFF7ED),
                  child: const Row(
                    children: [
                      Icon(Icons.wifi_off_rounded,
                          size: 18, color: Color(0xFFEA580C)),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Trabajando con datos locales (Offline)',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF9A3412),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              // Buscador Premium
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                child: CupertinoSearchTextField(
                  placeholder: 'Buscar proyectos...',
                  style: const TextStyle(fontFamily: 'Inter', fontSize: 15),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                ),
              ),

              if (items.isEmpty && _searchQuery.isNotEmpty)
                const Expanded(
                  child: Center(
                    child: Text('No hay coincidencias con la búsqueda',
                        style: TextStyle(
                            color: Color(0xFF94A3B8), fontFamily: 'Inter')),
                  ),
                )
              else if (items.isEmpty)
                const Expanded(child: _ProjectsEmptyState())
              else
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: _refresh,
                    color: const Color(0xFF059669),
                    child: ListView.builder(
                      padding: const EdgeInsets.all(20),
                      itemCount: items.length,
                      itemBuilder: (_, i) {
                        final p = (items[i] as Map).cast<String, dynamic>();
                        return _buildProjectCard(p);
                      },
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildProjectCard(Map<String, dynamic> p) {
    final nombre = (p['nombre'] ?? p['titulo'] ?? 'Sin Nombre').toString();
    final desc = (p['descripcion'] ?? 'Sin descripción').toString();
    final estado = (p['estado'] ?? 'ACTIVO').toString().toUpperCase();
    final avance = ((p['avance'] ?? p['progreso'] ?? 0) as num).toDouble();

    // Hierarchy
    final area = (p['area'] ?? 'N/A').toString();
    final gerencia = (p['gerencia'] ?? '').toString();
    final subgerencia = (p['subgerencia'] ?? '').toString();

    // Metadata
    final tipo = (p['tipo'] ?? 'General').toString();
    final creador =
        (p['creadorNombre'] ?? p['creadorCarnet'] ?? 'N/A').toString();
    final responsable =
        (p['responsableNombre'] ?? p['responsableCarnet'] ?? 'N/A').toString();

    // Dates Logic
    final start = p['fechaInicio'] != null
        ? DateTime.parse(p['fechaInicio'].toString())
        : null;
    final end =
        p['fechaFin'] != null ? DateTime.parse(p['fechaFin'].toString()) : null;
    double atraso = 0.0;

    if (start != null && end != null && avance < 100) {
      final now = DateTime.now();
      if (now.isAfter(start)) {
        final totalDuration = end.difference(start).inMilliseconds;
        final elapsed = now.difference(start).inMilliseconds;

        if (totalDuration > 0) {
          final expectedProgress = (elapsed / totalDuration) * 100;
          if (expectedProgress > avance) {
            atraso = expectedProgress - avance;
          }
        } else if (now.isAfter(end)) {
          atraso = 100 - avance;
        }
      }
    }

    final fechaInicio = start != null ? start.toString().split(' ')[0] : 'N/A';
    final fechaFin = end != null ? end.toString().split(' ')[0] : 'N/A';

    // Status Colors
    Color statusColor = const Color(0xFF10B981); // Emerald
    Color statusBg = const Color(0xFFECFDF5);
    IconData statusIcon = CupertinoIcons.check_mark_circled;

    if (estado == 'CERRADO' || estado == 'TERMINADO' || estado == 'HECHA') {
      statusColor = const Color(0xFF64748B);
      statusBg = const Color(0xFFF1F5F9);
      statusIcon = CupertinoIcons.archivebox;
    } else if (estado == 'DETENIDO' ||
        estado == 'PAUSADO' ||
        estado == 'BLOQUEADA') {
      statusColor = const Color(0xFFEF4444);
      statusBg = const Color(0xFFFEF2F2);
      statusIcon = CupertinoIcons.pause_circle;
    } else if (estado == 'BORRADOR') {
      statusColor = const Color(0xFFF59E0B);
      statusBg = const Color(0xFFFFFBEB);
      statusIcon = CupertinoIcons.pencil_circle;
    } else {
      // Activo / En Curso
      statusIcon = CupertinoIcons.play_circle;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: InkWell(
        onTap: () async {
          HapticFeedback.selectionClick();
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ProjectDetailScreen(project: p)),
          );
          _refresh();
        },
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Icon + Name + Pct
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: statusBg,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(statusIcon, color: statusColor, size: 24),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                nombre,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF0F172A),
                                  fontFamily: 'Inter',
                                  height: 1.2,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: statusBg,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color:
                                            statusColor.withValues(alpha: 0.2)),
                                  ),
                                  child: Text(
                                    '${avance.round()}%',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: statusColor,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),
                                if (atraso > 5) ...[
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFEF2F2),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: const Color(0xFFFCA5A5)),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                            CupertinoIcons
                                                .exclamationmark_triangle_fill,
                                            size: 8,
                                            color: Color(0xFFDC2626)),
                                        const SizedBox(width: 2),
                                        Text(
                                          '-${atraso.round()}%',
                                          style: const TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFFDC2626),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        // Hierarchy Breadcrumbs
                        if (gerencia.isNotEmpty)
                          Text(
                            subgerencia.isNotEmpty
                                ? '$gerencia > $subgerencia > $area'
                                : '$gerencia > $area',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF64748B),
                              fontFamily: 'Inter',
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        else
                          Text(
                            area,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF64748B),
                              fontFamily: 'Inter',
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),

              if (desc.isNotEmpty && desc != 'Sin descripción') ...[
                const SizedBox(height: 12),
                Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF64748B),
                    fontFamily: 'Inter',
                    height: 1.5,
                  ),
                ),
              ],

              const SizedBox(height: 12),

              // Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: avance / 100,
                  backgroundColor: const Color(0xFFF1F5F9),
                  color: statusColor,
                  minHeight: 6,
                ),
              ),

              const SizedBox(height: 12),

              // Key Value Grid
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFF1F5F9)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: _ProjectMetaCol(
                        label: 'CREADOR',
                        value: creador.split(' ')[0], // First name only usually
                      ),
                    ),
                    Container(
                        width: 1, height: 24, color: const Color(0xFFE2E8F0)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: _ProjectMetaCol(
                          label: 'RESPONSABLE',
                          value: responsable.split(' ')[0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // Tags & Dates Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE2E8F0)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      tipo.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF475569),
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  Text(
                    '$fechaInicio - $fechaFin',
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF94A3B8),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    Widget box(double w, double h) => Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(8)),
        );

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      itemBuilder: (_, i) => Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFF1F5F9)),
        ),
        child: Column(
          children: [
            Row(children: [
              box(40, 40),
              const SizedBox(width: 12),
              Expanded(child: box(150, 20))
            ]),
            const SizedBox(height: 12),
            box(double.infinity, 40),
          ],
        ),
      ),
    );
  }
}

class _ProjectMetaCol extends StatelessWidget {
  final String label;
  final String value;
  const _ProjectMetaCol({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w800,
            color: Color(0xFF94A3B8),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: Color(0xFF334155),
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _ProjectsEmptyState extends StatelessWidget {
  const _ProjectsEmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.folder_open, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 16),
          const Text(
            'No tienes proyectos asignados',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF64748B),
            ),
          ),
        ],
      ),
    );
  }
}
