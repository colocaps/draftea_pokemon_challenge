part of 'pokemon_details_cubit.dart';

enum PokemonDetailsStatus { initial, loading, loaded, error }

@freezed
abstract class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState({
    PokemonDetailsModel? details,
    String? errorMessage,
    PokemonDetailsStatus? status,
  }) = _PokemonDetailsState;
}
