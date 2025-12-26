import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/usecase/get_pokemon_details_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_cubit.freezed.dart';
part 'pokemon_details_state.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit({
    required GetPokemonDetailsUsecase getPokemonDetailsUsecase,
  }) : _getPokemonDetailsUsecase = getPokemonDetailsUsecase,
       super(const PokemonDetailsState());

  final GetPokemonDetailsUsecase _getPokemonDetailsUsecase;

  Future<void> getPokemonDetails(String idOrName) async {
    emit(
      state.copyWith(status: PokemonDetailsStatus.loading, errorMessage: null),
    );

    final result = await _getPokemonDetailsUsecase(idOrName: idOrName);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PokemonDetailsStatus.error,
          errorMessage: failure.exceptionMapper.message,
        ),
      ),
      (details) => emit(
        state.copyWith(
          status: PokemonDetailsStatus.loaded,
          details: details,
          errorMessage: null,
        ),
      ),
    );
  }
}
