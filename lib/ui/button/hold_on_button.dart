import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';

class HoldOnButton extends StatefulWidget {
  const HoldOnButton({required this.onFinsihed, super.key});
  final VoidCallback onFinsihed;

  @override
  HoldOnButtonState createState() => HoldOnButtonState();
}

class HoldOnButtonState extends State<HoldOnButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    controller
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.onFinsihed();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        if (controller.status == AnimationStatus.forward) {
          controller.reverse();
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          const SizedBox(
            height: 86,
            width: 86,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              value: 1,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
          SizedBox(
            height: 86,
            width: 86,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              value: controller.value,
              valueColor: const AlwaysStoppedAnimation<Color>(
                CustomColors.primary,
              ),
            ),
          ),
          const Icon(Icons.close, color: Colors.white, size: 60),
        ],
      ),
    );
  }
}
