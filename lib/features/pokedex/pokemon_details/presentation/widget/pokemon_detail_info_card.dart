import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';

class PokemonDetailInfoCard extends StatelessWidget {
  const PokemonDetailInfoCard({
    required this.title,
    required this.value,
    super.key,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withValues(alpha: 0.10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLabel(
            text: title,
            color: Colors.white.withValues(alpha: 0.75),
            style: Theme.of(context).textTheme.labelLarge,
            maxLines: 1,
          ),
          const SizedBox(height: 6),
          CustomLabel(
            text: value,
            color: Colors.white,
            style: Theme.of(context).textTheme.titleMedium,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
