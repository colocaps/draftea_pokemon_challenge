import 'package:draftea_pokemon_challenge/di/injection.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/usecase/get_pokemon_list_usecase.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/cubit/pokemon_list_cubit.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/view/pokemon_list_page.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/container/page_container.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:draftea_pokemon_challenge/ui/snackbar/top_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({super.key});
  static const String routeName = '/pokemon-list';
  static const String path = '/pokemon-list';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonListCubit(
        getPokemonListUsecase: getIt<GetPokemonListUsecase>(),
      )..getPokemonList(),
      child: BlocListener<PokemonListCubit, PokemonListState>(
        listener: (context, state) {
          if (state.status == PokemonListStatus.error) {
            showTopSnackbar(
              context: context,
              icon: Assets.icons.stopBlockedIcon.svg(
                colorFilter: const ColorFilter.mode(
                  Colors.red,
                  BlendMode.srcIn,
                ),
              ),
              title: state.errorMessage ?? 'Ha ocurrido un error inesperado',
            );
          }
        },
        child: const PageContainerSliver(
          useGradientBackground: true,
          sliverAppbar: SliverAppBar(
            expandedHeight: 120,
            collapsedHeight: 120,
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: EdgeInsets.only(bottom: 8),
              title: CustomLabel(text: 'Pokedex'),
            ),
          ),
          slivers: [SliverFillRemaining(child: PokemonListPage())],
        ),
      ),
    );
  }
}
