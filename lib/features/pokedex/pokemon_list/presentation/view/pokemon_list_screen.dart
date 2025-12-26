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
          if (state.errorMessage != null) {
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
            context.read<PokemonListCubit>().clearError();
          }
        },
        child: const PageContainerSliver(
          canPop: false,
          useGradientBackground: true,
          sliverAppbar: SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: CustomLabel(
              color: Colors.white,
              text: 'Pokedex',
              minFontsize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          slivers: [PokemonListSliver()],
        ),
      ),
    );
  }
}
