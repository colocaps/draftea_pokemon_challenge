import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';

class CameraContainer extends StatefulWidget {
  const CameraContainer({
    required this.child,
    super.key,
    this.isFlashVisible = false,
  });

  final Widget child;
  final bool isFlashVisible;

  @override
  State<CameraContainer> createState() => _CameraContainerState();
}

class _CameraContainerState extends State<CameraContainer> {
  bool isFlashOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 187,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2),
      ),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topRight,
        children: [
          widget.child,
          Visibility(
            visible: widget.isFlashVisible,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFlashOn = !isFlashOn;
                    });
                  },
                  child: Icon(isFlashOn ? Icons.flash_auto : Icons.flash_off),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
