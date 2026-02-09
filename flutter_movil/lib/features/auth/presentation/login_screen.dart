import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/app_theme.dart';
import 'auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthController>();
    final theme = Theme.of(context);
    
    // Usamos colores fijos para garantizar fidelidad al diseño React
    const slate900 = Color(0xFF0F172A);
    const slate500 = Color(0xFF64748B);
    const emerald600 = Color(0xFF059669);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC), // Slate 50
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // === LOGO Y TÍTULO ===
              Hero(
                tag: 'app_logo',
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: emerald600.withOpacity(0.2),
                        blurRadius: 24,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.layers_outlined, // Icono abstracto tipo Planner
                    size: 48,
                    color: emerald600,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              
              Text(
                'PLANNER-EF',
                style: theme.textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                  color: slate900,
                ),
              ),
              const SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [emerald600, Color(0xFF10B981)], // Emerald Gradient
                ).createShader(bounds),
                child: Text(
                  'EFICIENCIA Y LEGADO',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.white, // Mask requires white base
                  ),
                ),
              ),
              
              const SizedBox(height: 48),

              // === TARJETA DE LOGIN ===
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: slate900.withOpacity(0.08),
                      blurRadius: 32,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Línea superior de color (como en React: Pink/Orange -> Ahora Emerald Gradient)
                    Container(
                      height: 4,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [emerald600, Color(0xFF34D399), Color(0xFF10B981)],
                        ),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Iniciar Sesión',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: slate900,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Accede a tu cuenta institucional',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: slate500,
                              ),
                            ),
                            const SizedBox(height: 32),

                            // Input Email/Carnet
                            TextFormField(
                              controller: _emailController,
                              style: const TextStyle(color: slate900),
                              decoration: InputDecoration(
                                labelText: 'Correo o Carnet',
                                hintText: 'usuario@claro.com.ni',
                                prefixIcon: const Icon(Icons.email_outlined, color: slate500),
                                filled: true,
                                fillColor: const Color(0xFFF8FAFC),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(color: emerald600, width: 2),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor ingresa tu usuario';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),

                            // Input Password
                            TextFormField(
                              controller: _passwordController,
                              obscureText: _obscurePassword,
                              style: const TextStyle(color: slate900),
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                                prefixIcon: const Icon(Icons.lock_outline, color: slate500),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                    color: const Color(0xFF94A3B8),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF8FAFC),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(color: emerald600, width: 2),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.length < 6) {
                                  return 'Mínimo 6 caracteres';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 32),

                            // Mensaje de Error
                            if (auth.error != null)
                              Container(
                                padding: const EdgeInsets.all(12),
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFEF2F2),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: const Color(0xFFFECACA)),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.error_outline, color: Color(0xFFEF4444), size: 20),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        auth.error!,
                                        style: const TextStyle(
                                          color: Color(0xFFB91C1C),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            // Botón Login (Negro Slate como React)
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: slate900.withOpacity(0.2),
                                    blurRadius: 16,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF0F172A), Color(0xFF334155)], // Slate Dark 
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: ElevatedButton(
                                onPressed: auth.loading
                                    ? null
                                    : () {
                                        if (_formKey.currentState!.validate()) {
                                          context.read<AuthController>().login(
                                                _emailController.text.trim(),
                                                _passwordController.text,
                                              );
                                        }
                                      },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: const EdgeInsets.symmetric(vertical: 18),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: auth.loading
                                    ? const SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'INGRESAR',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 20),
                                        ],
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 48),
              Text(
                '© 2026 Momentus Corp',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF94A3B8), // Slate 400
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
