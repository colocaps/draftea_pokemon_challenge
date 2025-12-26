// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonDetailsModel _$PokemonDetailsModelFromJson(Map<String, dynamic> json) =>
    _PokemonDetailsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      stats:
          (json['stats'] as List<dynamic>?)
              ?.map((e) => PokemonStatModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PokemonStatModel>[],
    );

Map<String, dynamic> _$PokemonDetailsModelToJson(
  _PokemonDetailsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'height': instance.height,
  'weight': instance.weight,
  'types': instance.types,
  'stats': instance.stats,
};

_PokemonStatModel _$PokemonStatModelFromJson(Map<String, dynamic> json) =>
    _PokemonStatModel(
      name: json['name'] as String,
      baseStat: (json['baseStat'] as num).toInt(),
    );

Map<String, dynamic> _$PokemonStatModelToJson(_PokemonStatModel instance) =>
    <String, dynamic>{'name': instance.name, 'baseStat': instance.baseStat};
