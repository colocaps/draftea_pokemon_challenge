import 'package:flutter/material.dart';

/// Punto de control para el gradiente de malla
class GradientControlPoint {
  const GradientControlPoint({required this.position, required this.color});
  final Offset position;
  final Color color;
}

/// Widget que muestra un gradiente de malla
class MeshGradientWidget extends StatelessWidget {
  const MeshGradientWidget({
    required this.controlPoints,
    super.key,
    this.blendFactor = 1.0,
    this.child,
  });
  final List<GradientControlPoint> controlPoints;
  final double blendFactor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Capa superior: Gradiente horizontal
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2845D8),
                  Color(0xFF5E5FE0),
                  Color.fromARGB(255, 115, 85, 234),
                  Color.fromARGB(255, 157, 130, 218),
                ],
                stops: [0.0, 0.33, 0.66, 1.0],
              ),
            ),
          ),
        ),
        // Capa inferior: Gradiente vertical
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF2845D8).withValues(alpha:0),
                  const Color(0xFF001BA8).withValues(alpha:0.8),
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
