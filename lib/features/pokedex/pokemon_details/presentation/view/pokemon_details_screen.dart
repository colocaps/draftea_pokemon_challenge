import 'package:draftea_pokemon_challenge/di/injection.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/usecase/get_pokemon_details_usecase.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/cubit/pokemon_details_cubit.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/presentation/view/pokemon_details_page.dart';
import 'package:draftea_pokemon_challenge/ui/container/page_container.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokemonDetailsScreen extends StatefulWidget {
  const PokemonDetailsScreen({required this.idOrName, super.key});

  static const String routeName = '/pokemon-details';
  static const String path = '/pokemon-details/:idOrName';

  final String idOrName;

  @override
  State<PokemonDetailsScreen> createState() => _PokemonDetailsScreenState();
}

class _PokemonDetailsScreenState extends State<PokemonDetailsScreen> {
  late final PokemonDetailsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = PokemonDetailsCubit(
      getPokemonDetailsUsecase: getIt<GetPokemonDetailsUsecase>(),
    );
    if (widget.idOrName.isNotEmpty) {
      _cubit.getPokemonDetails(widget.idOrName);
    }
  }

  @override
  void didUpdateWidget(covariant PokemonDetailsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.idOrName != widget.idOrName && widget.idOrName.isNotEmpty) {
      _cubit.getPokemonDetails(widget.idOrName);
    }
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: const PageContainerSliver(
        useGradientBackground: true,
        sliverAppbar: SliverAppBar(
          pinned: true,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: CustomLabel(
            text: 'Detalle',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            minFontsize: 20,
          ),
        ),
        slivers: [PokemonDetailsPage()],
      ),
    );
  }
}
