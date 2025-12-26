// ignore_for_file: lines_longer_than_80_chars

import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 355,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomLabel(
                      maxLines: 1,
                      text: 'Urgente',
                      color: Colors.black,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Assets.icons.noWifiSolidIcon.svg(),
                    CustomLabel(
                      maxLines: 1,
                      text: 'Revisa tu conexión',
                      color: Colors.black,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                CustomLabel(
                  maxLines: 1,
                  text: 'Te quedaste sin internet!',
                  color: Colors.black,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
