import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/usecase/get_pokemon_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_state.dart';
part 'pokemon_list_cubit.freezed.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  PokemonListCubit({required GetPokemonListUsecase getPokemonListUsecase})
    : _getPokemonListUsecase = getPokemonListUsecase,
      super(const PokemonListState());
  final GetPokemonListUsecase _getPokemonListUsecase;

  Future<void> getPokemonList() async {
    emit(state.copyWith(status: PokemonListStatus.loading));
    final result = await _getPokemonListUsecase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PokemonListStatus.error,
          errorMessage: failure.exceptionMapper.message,
          dateTime: DateTime.now(),
        ),
      ),
      (pokemonList) => emit(
        state.copyWith(
          status: PokemonListStatus.loaded,
          pokemonList: pokemonList,
          dateTime: DateTime.now(),
        ),
      ),
    );
  }
}
