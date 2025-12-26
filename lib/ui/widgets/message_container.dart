import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    required this.messageText,
    super.key,
    this.heigth,
    this.color,
  });
  final String messageText;
  final double? heigth;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 390,
        height: heigth,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: CustomLabel(
              textAlign: TextAlign.center,
              maxLines: 3,
              text: messageText,
              color: Colors.white,
              style: Theme.of(
                context,
              ).textTheme.displaySmall!.copyWith(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
