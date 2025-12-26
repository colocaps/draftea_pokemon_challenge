import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';

class PokemonListItemCard extends StatelessWidget {
  const PokemonListItemCard({
    required this.index,
    required this.name,
    required this.id,
    required this.formatId,
    this.isSelected = false,
    this.onTap,
    super.key,
  });

  final int index;
  final String name;
  final int? id;
  final String Function(int id) formatId;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final subtitle = id != null ? formatId(id!) : '#${index + 1}';
    final borderColor = isSelected
        ? Colors.white.withValues(alpha: 0.55)
        : Colors.white.withValues(alpha: 0.10);
    final bgColor = isSelected
        ? Colors.white.withValues(alpha: 0.16)
        : Colors.white.withValues(alpha: 0.08);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: borderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                _PokemonThumbnail(id: id),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomLabel(text: name, color: Colors.white, maxLines: 1),
                      const SizedBox(height: 2),
                      CustomLabel(
                        text: subtitle,
                        color: Colors.white.withValues(alpha: 0.75),
                        style: Theme.of(context).textTheme.labelMedium,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white.withValues(alpha: 0.65),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PokemonThumbnail extends StatelessWidget {
  const _PokemonThumbnail({required this.id});

  final int? id;

  String _officialArtworkUrl(int id) =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

  String _spriteUrl(int id) =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  @override
  Widget build(BuildContext context) {
    final bg = Colors.white.withValues(alpha: 0.10);

    Widget placeholder() => Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Icon(
        Icons.catching_pokemon,
        color: Colors.white.withValues(alpha: 0.65),
        size: 20,
      ),
    );

    if (id == null) return placeholder();

    Widget image(String url, {Widget? errorFallback}) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 44,
          height: 44,
          color: bg,
          child: Image.network(
            url,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.red.withValues(alpha: 0.8),
                  ),
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return errorFallback ?? placeholder();
            },
          ),
        ),
      );
    }

    return image(
      _officialArtworkUrl(id!),
      errorFallback: image(_spriteUrl(id!)),
    );
  }
}
