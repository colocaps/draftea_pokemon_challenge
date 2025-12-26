import 'package:draftea_pokemon_challenge/core/extentions/string_extentions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/cubit/pokemon_details_cubit.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/widget/pokemon_detail_info_card.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/widget/pokemon_detail_stat_row.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/widget/pokemon_detail_type_chip.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokemonDetailsPage extends StatelessWidget {
  const PokemonDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
      builder: (context, state) {
        if (state.status == PokemonDetailsStatus.loading) {
          return SliverFillRemaining(
            child: Center(
              child: Assets.lottie.pokeballLoader.lottie(
                width: 100,
                height: 100,
              ),
            ),
          );
        }

        if (state.status == PokemonDetailsStatus.error) {
          return SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomLabel(
                  text: state.errorMessage ?? 'Error cargando el Pokémon',
                  color: Colors.white,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }

        final details = state.details;
        if (details == null) {
          return const SliverFillRemaining(child: SizedBox.shrink());
        }

        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      width: 180,
                      height: 180,
                      color: Colors.white.withValues(alpha: 0.08),
                      child: Image.network(
                        details.imageUrl,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.catching_pokemon,
                            color: Colors.white.withValues(alpha: 0.7),
                            size: 64,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: CustomLabel(
                    text: details.name.capitalize(),
                    color: Colors.white,
                    style: Theme.of(context).textTheme.headlineSmall,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                Center(
                  child: CustomLabel(
                    text: '#${details.id.toString().padLeft(3, '0')}',
                    color: Colors.white.withValues(alpha: 0.75),
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: details.types
                      .map((t) => PokemonDetailTypeChip(label: t.capitalize()))
                      .toList(growable: false),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: PokemonDetailInfoCard(
                        title: 'Altura',
                        value: '${details.height / 10} m',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: PokemonDetailInfoCard(
                        title: 'Peso',
                        value: '${details.weight / 10} kg',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CustomLabel(
                  text: 'Stats',
                  color: Colors.white,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),
                ...details.stats.map(
                  (s) => PokemonDetailStatRow(
                    name: s.name.toUpperCase(),
                    value: s.baseStat,
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
    );
  }
}
