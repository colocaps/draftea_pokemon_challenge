import 'package:flutter/material.dart';

/// Punto de control para el gradiente de malla
class GradientControlPoint {
  const GradientControlPoint({required this.position, required this.color});
  final Offset position;
  final Color color;
}

/// Widget que muestra un gradiente de malla
class MeshGradientWidget extends StatelessWidget {
  const MeshGradientWidget({super.key, this.blendFactor = 1.0, this.child});
  final double blendFactor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFE53935),
                  Color.fromARGB(255, 238, 50, 50),
                  Color.fromARGB(255, 238, 101, 101),
                  Color.fromARGB(255, 241, 128, 128),
                ],
                stops: [0.0, 0.33, 0.66, 1.0],
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFE53935).withValues(alpha: 0),
                  const Color.fromARGB(
                    255,
                    237,
                    162,
                    145,
                  ).withValues(alpha: 0.8),
                ],
              ),
            ),
          ),
        ),
        // Contenido
        if (child != null) child!,
      ],
    );
  }
}
