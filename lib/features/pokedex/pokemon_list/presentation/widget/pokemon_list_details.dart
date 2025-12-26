import 'package:draftea_pokemon_challenge/core/extentions/string_extentions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/view/pokemon_details_screen.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/cubit/pokemon_list_cubit.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/widget/pokemon_list_item.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/utils/pokemon_utils.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokemonListDetail extends StatefulWidget {
  const PokemonListDetail({super.key});

  @override
  State<PokemonListDetail> createState() => _PokemonListDetailState();
}

class _PokemonListDetailState extends State<PokemonListDetail> {
  final ScrollController _listController = ScrollController();

  @override
  void initState() {
    super.initState();
    _listController.addListener(_onListScroll);
  }

  void _onListScroll() {
    if (!_listController.hasClients) return;
    final max = _listController.position.maxScrollExtent;
    final current = _listController.position.pixels;
    if (current >= max - 300) {
      context.read<PokemonListCubit>().loadMore();
    }
  }

  @override
  void dispose() {
    _listController
      ..removeListener(_onListScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: BlocBuilder<PokemonListCubit, PokemonListState>(
            builder: (context, state) {
              final selectedIdOrName = state.selectedIdOrName;
              final results = state.pokemonList?.results ?? const [];
              final isInitialLoading =
                  state.status == PokemonListStatus.loading &&
                  state.pokemonList == null;
              final isLoadingMore =
                  state.status == PokemonListStatus.loading &&
                  state.pokemonList != null;
              final hasMore = state.pokemonList?.next != null;

              if (isInitialLoading) {
                return Center(
                  child: Assets.lottie.pokeballLoader.lottie(
                    width: 40,
                    height: 40,
                  ),
                );
              }

              if (results.isEmpty) {
                return const Center(
                  child: CustomLabel(
                    text: 'No hay Pokémon para mostrar',
                    color: Colors.white,
                  ),
                );
              }

              // Siempre mostramos un footer (spinner / fin de lista / espacio)
              final total = results.length + 1;
              return ListView.builder(
                controller: _listController,
                padding: const EdgeInsets.only(top: 8, bottom: 16),
                itemCount: total,
                itemBuilder: (context, index) {
                  if (index >= results.length) {
                    if (isLoadingMore) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Assets.lottie.pokeballLoader.lottie(
                            width: 20,
                            height: 20,
                          ),
                        ),
                      );
                    }
                    if (!hasMore) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: CustomLabel(
                            text: 'Fin de la lista',
                            color: Colors.white,
                          ),
                        ),
                      );
                    }
                    return const SizedBox(height: 24);
                  }

                  final id = pokemonIdFromUrl(results[index].url);
                  final idOrName = id?.toString() ?? results[index].name;
                  final isSelected = selectedIdOrName == idOrName;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: PokemonListItemCard(
                      index: index,
                      name: results[index].name.capitalize(),
                      id: id,
                      formatId: pokemonFormatId,
                      isSelected: isSelected,
                      onTap: () {
                        context.read<PokemonListCubit>().selectPokemon(
                          idOrName,
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),

        Container(width: 1, color: Colors.white.withValues(alpha: 0.10)),

        Expanded(
          flex: 7,
          child: BlocBuilder<PokemonListCubit, PokemonListState>(
            buildWhen: (previous, current) =>
                previous.selectedIdOrName != current.selectedIdOrName,
            builder: (context, state) {
              return PokemonDetailsScreen(idOrName: state.selectedIdOrName);
            },
          ),
        ),
      ],
    );
  }
}
