import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void showTopSnackbar({
  required BuildContext context,
  required String title,
  Widget? icon,
}) {
  showTopSnackBar(
    Overlay.of(context),
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 60,
      width: 355,
      child: Row(
        children: [
          if (icon != null)
            Padding(padding: const EdgeInsets.only(left: 15), child: icon)
          else
            const SizedBox.shrink(),
          const SizedBox(width: 9),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CustomLabel(
                textAlign: TextAlign.center,
                maxLines: 4,
                text: title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
