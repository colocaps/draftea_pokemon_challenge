part of 'pokemon_list_cubit.dart';

enum PokemonListStatus { initial, loading, loaded, error }

@freezed
abstract class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    PokemonListModel? pokemonList,
    String? errorMessage,
    DateTime? dateTime,
    PokemonListStatus? status,
  }) = _PokemonListState;
}
