import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/notification_preferences_service.dart';
import '../../auth/presentation/auth_controller.dart';
import '../../home/presentation/home_shell.dart';

/// Pantalla de Ajustes - Diseño Premium
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final NotificationPreferencesService _notificationPreferencesService =
      NotificationPreferencesService();

  NotificationPreferences _preferences = const NotificationPreferences(
    enabled: true,
    assignmentAlerts: true,
    pendingReminders: true,
  );
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final preferences = await _notificationPreferencesService.load();
    if (!mounted) return;
    setState(() {
      _preferences = preferences;
      _loading = false;
    });
  }

  Future<void> _updatePreferences(NotificationPreferences updated) async {
    setState(() => _preferences = updated);
    await _notificationPreferencesService.save(updated);
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        appBar: _buildAppBar(),
        body: const Center(
            child: CircularProgressIndicator(color: Color(0xFF6366F1))),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Sección: Notificaciones
          _buildSectionHeader('Notificaciones', Icons.notifications_outlined),
          const SizedBox(height: 12),
          _buildSettingsCard([
            _SwitchTile(
              icon: Icons.notifications_active,
              iconColor: const Color(0xFF6366F1),
              title: 'Notificaciones activas',
              subtitle:
                  'Permitir avisos de nuevas asignaciones y recordatorios.',
              value: _preferences.enabled,
              onChanged: (value) {
                _updatePreferences(_preferences.copyWith(enabled: value));
              },
            ),
            _SwitchTile(
              icon: Icons.assignment_ind_outlined,
              iconColor: const Color(0xFF10B981),
              title: 'Nuevas asignaciones',
              subtitle: 'Avisar cuando se te asigne una nueva tarea.',
              value: _preferences.enabled && _preferences.assignmentAlerts,
              enabled: _preferences.enabled,
              onChanged: (value) {
                _updatePreferences(
                    _preferences.copyWith(assignmentAlerts: value));
              },
            ),
            _SwitchTile(
              icon: Icons.alarm_on_outlined,
              iconColor: const Color(0xFFF59E0B),
              title: 'Recordatorios de pendientes',
              subtitle: 'Avisar si tienes tareas por vencer o atrasadas.',
              value: _preferences.enabled && _preferences.pendingReminders,
              enabled: _preferences.enabled,
              onChanged: (value) {
                _updatePreferences(
                    _preferences.copyWith(pendingReminders: value));
              },
              isLast: true,
            ),
          ]),

          const SizedBox(height: 24),

          // Sección: Sincronización
          _buildSectionHeader('Sincronización', Icons.sync),
          const SizedBox(height: 12),
          _buildSettingsCard([
            _InfoTile(
              icon: Icons.cloud_done,
              iconColor: const Color(0xFF3B82F6),
              title: 'Estado de sincronización',
              subtitle: 'Conectado • Última sync hace 5 min',
              trailing: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF10B981).withAlpha(20),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check_circle,
                        size: 14, color: Color(0xFF10B981)),
                    SizedBox(width: 4),
                    Text(
                      'Online',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF10B981),
                      ),
                    ),
                  ],
                ),
              ),
              isLast: true,
            ),
          ]),

          const SizedBox(height: 24),

          // Sección: Apariencia
          _buildSectionHeader('Apariencia', Icons.palette_outlined),
          const SizedBox(height: 12),
          _buildSettingsCard([
            const _InfoTile(
              icon: Icons.brightness_6,
              iconColor: Color(0xFF8B5CF6),
              title: 'Tema visual',
              subtitle: 'Indigo Enterprise - Modo claro',
              isLast: true,
            ),
          ]),

          const SizedBox(height: 24),

          // Sección: Seguridad
          _buildSectionHeader('Seguridad', Icons.security),
          const SizedBox(height: 12),
          _buildSettingsCard([
            const _InfoTile(
              icon: Icons.fingerprint,
              iconColor: Color(0xFFEC4899),
              title: 'Autenticación biométrica',
              subtitle: 'Próximamente - Bloqueo con huella o Face ID',
            ),
            const _InfoTile(
              icon: Icons.timer_outlined,
              iconColor: Color(0xFF64748B),
              title: 'Cierre automático',
              subtitle: 'Bloquear app después de 5 minutos de inactividad',
              isLast: true,
            ),
          ]),

          const SizedBox(height: 24),

          // Botón de Cerrar Sesión
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFEF4444).withAlpha(50)),
            ),
            child: Material(
              color: const Color(0xFFFEF2F2),
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                onTap: () async {
                  final auth = context.read<AuthController>();
                  final confirm = await showDialog<bool>(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text('Cerrar sesión'),
                      content:
                          const Text('¿Estás seguro que deseas cerrar sesión?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(ctx, false),
                          child: const Text('Cancelar'),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(ctx, true),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEF4444),
                          ),
                          child: const Text('Cerrar sesión'),
                        ),
                      ],
                    ),
                  );
                  if (confirm == true && mounted) {
                    auth.logout();
                  }
                },
                borderRadius: BorderRadius.circular(12),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: Color(0xFFEF4444)),
                      SizedBox(width: 10),
                      Text(
                        'Cerrar sesión',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xFFEF4444),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // Versión
          Center(
            child: Text(
              'Momentus Móvil v1.0.0',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Colors.grey[400],
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu_rounded, color: Color(0xFF1E293B)),
        onPressed: () => HomeShell.scaffoldKey.currentState?.openDrawer(),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ajustes',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Color(0xFF0F172A),
            ),
          ),
          Text(
            'Configuración de la aplicación',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color(0xFF64748B),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 18, color: const Color(0xFF64748B)),
        const SizedBox(width: 8),
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 11,
            fontWeight: FontWeight.w800,
            letterSpacing: 1,
            color: Color(0xFF64748B),
          ),
        ),
      ],
    );
  }

  Widget _buildSettingsCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(children: children),
    );
  }
}

class _SwitchTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;
  final bool isLast;

  const _SwitchTile({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.value,
    this.enabled = true,
    required this.onChanged,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: Color(0xFFF1F5F9))),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 8, 14),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor.withAlpha(20),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: iconColor, size: 20),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: enabled ? const Color(0xFF1E293B) : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      color:
                          enabled ? const Color(0xFF94A3B8) : Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Switch(
              value: value,
              onChanged: enabled ? onChanged : null,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return const Color(0xFF6366F1);
                }
                return null;
              }),
              trackColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return const Color(0xFF6366F1).withAlpha(100);
                }
                return null;
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final bool isLast;

  const _InfoTile({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: Color(0xFFF1F5F9))),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor.withAlpha(20),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: iconColor, size: 20),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      color: Color(0xFF94A3B8),
                    ),
                  ),
                ],
              ),
            ),
            if (trailing != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: trailing,
              ),
          ],
        ),
      ),
    );
  }
}
