import 'package:draftea_pokemon_challenge/core/extentions/string_extentions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/view/pokemon_details_screen.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/cubit/pokemon_list_cubit.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/widget/pokemon_list_item.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/utils/pokemon_utils.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PokemonListPage extends StatelessWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListCubit, PokemonListState>(
      builder: (context, state) {
        final results = state.pokemonList?.results ?? const [];
        final isInitialLoading =
            state.status == PokemonListStatus.loading &&
            state.pokemonList == null;
        final isLoadingMore =
            state.status == PokemonListStatus.loading &&
            state.pokemonList != null;
        final hasMore = state.pokemonList?.next != null;

        if (isInitialLoading) {
          return SliverFillRemaining(
            child: Center(
              child: Assets.lottie.pokeballLoader.lottie(
                width: 100,
                height: 100,
              ),
            ),
          );
        }

        if (state.status == PokemonListStatus.loaded || isLoadingMore) {
          final total = results.length + (isLoadingMore || hasMore ? 1 : 0);
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (state.status == PokemonListStatus.loaded &&
                  hasMore &&
                  results.isNotEmpty &&
                  index >= results.length - 5) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (!context.mounted) return;
                  context.read<PokemonListCubit>().loadMore();
                });
              }

              if (index >= results.length) {
                if (isLoadingMore) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (!hasMore) {
                  final count = state.pokemonList?.count;
                  final loaded = results.length;
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Center(
                      child: Text(
                        count == null
                            ? 'Fin de la lista'
                            : 'Fin de la lista ($loaded/$count)',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  );
                }
                return const SizedBox(height: 24);
              }

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 4,
                ),
                child: PokemonListItemCard(
                  index: index,
                  name: results[index].name.capitalize(),
                  id: pokemonIdFromUrl(results[index].url),
                  formatId: pokemonFormatId,
                  onTap: () {
                    final id = pokemonIdFromUrl(results[index].url);
                    final idOrName = id?.toString() ?? results[index].name;
                    context.pushNamed(
                      PokemonDetailsScreen.routeName,
                      pathParameters: {'idOrName': idOrName},
                    );
                  },
                ),
              );
            }, childCount: total),
          );
        }

        return const SliverFillRemaining(child: SizedBox.shrink());
      },
    );
  }
}
