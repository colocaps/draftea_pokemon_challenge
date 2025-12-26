import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';

class PokemonDetailStatRow extends StatelessWidget {
  const PokemonDetailStatRow({
    required this.name,
    required this.value,
    super.key,
  });
  final String name;
  final int value;

  @override
  Widget build(BuildContext context) {
    final clamped = value.clamp(0, 200);
    final percent = clamped / 200.0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: CustomLabel(
              text: name,
              color: Colors.white.withValues(alpha: 0.85),
              style: Theme.of(context).textTheme.labelMedium,
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: LinearProgressIndicator(
                value: percent,
                minHeight: 10,
                backgroundColor: Colors.white.withValues(alpha: 0.12),
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white.withValues(alpha: 0.8),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 34,
            child: CustomLabel(
              text: value.toString(),
              color: Colors.white,
              maxLines: 1,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
