import 'package:flutter/material.dart';

/// Widget que muestra un fondo con gradiente diagonal
/// que va de azul profundo a morado/rosa claro
class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF0033FF), // Azul profundo
              Color(0xFF6B4FFF), // Azul-morado intermedio
              Color(0xFFC8B0FF), // Morado/rosa claro
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: child,
      ),
    );
  }
}
