import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_model.freezed.dart';
part 'pokemon_details_model.g.dart';

@freezed
abstract class PokemonDetailsModel with _$PokemonDetailsModel {
  const factory PokemonDetailsModel({
    required int id,
    required String name,
    required String imageUrl,
    required int height,
    required int weight,
    @Default(<String>[]) List<String> types,
    @Default(<PokemonStatModel>[]) List<PokemonStatModel> stats,
  }) = _PokemonDetailsModel;

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsModelFromJson(json);
}

@freezed
abstract class PokemonStatModel with _$PokemonStatModel {
  const factory PokemonStatModel({
    required String name,
    required int baseStat,
  }) = _PokemonStatModel;

  factory PokemonStatModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatModelFromJson(json);
}
