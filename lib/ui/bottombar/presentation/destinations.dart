import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';

class NavDestinations extends StatelessWidget {
  const NavDestinations({
    required this.isSelected,
    required this.iconImage,
    required this.title,
    super.key,
    this.onTap,
    this.isGreenBackground = false,
  });
  final bool isSelected;
  final Widget iconImage;
  final void Function()? onTap;
  final String title;
  final bool isGreenBackground;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: SizedBox(width: 80, height: 80, child: iconImage)),
          const SizedBox(height: 4),
          CustomLabel(
            text: title,
            maxFontSize: 14,
            textAlign: TextAlign.right,
            color: isSelected ? CustomColors.primary : Colors.black,
          ),
        ],
      ),
    );
  }
}
