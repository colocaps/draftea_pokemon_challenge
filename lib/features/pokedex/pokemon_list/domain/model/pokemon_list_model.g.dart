// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonListModel _$PokemonListModelFromJson(Map<String, dynamic> json) =>
    _PokemonListModel(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) => PokemonListItemModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <PokemonListItemModel>[],
    );

Map<String, dynamic> _$PokemonListModelToJson(_PokemonListModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_PokemonListItemModel _$PokemonListItemModelFromJson(
  Map<String, dynamic> json,
) => _PokemonListItemModel(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$PokemonListItemModelToJson(
  _PokemonListItemModel instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
