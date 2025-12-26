import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';

class DividerLineWithText extends StatelessWidget {
  const DividerLineWithText({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(height: 0.5, color: Colors.white, thickness: 0.5),
        ),
        const SizedBox(width: 10),
        CustomLabel(color: Colors.white, text: text),
        const SizedBox(width: 10),
        const Expanded(
          child: Divider(height: 0.5, color: Colors.white, thickness: 0.5),
        ),
      ],
    );
  }
}
