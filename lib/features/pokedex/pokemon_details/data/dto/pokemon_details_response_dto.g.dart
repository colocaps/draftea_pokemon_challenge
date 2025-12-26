// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailsResponseDto _$PokemonDetailsResponseDtoFromJson(
  Map<String, dynamic> json,
) => PokemonDetailsResponseDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  height: (json['height'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
  types:
      (json['types'] as List<dynamic>?)
          ?.map((e) => PokemonTypeSlotDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  stats:
      (json['stats'] as List<dynamic>?)
          ?.map((e) => PokemonStatDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  sprites: PokemonSpritesDto.fromJson(json['sprites'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PokemonDetailsResponseDtoToJson(
  PokemonDetailsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'height': instance.height,
  'weight': instance.weight,
  'types': instance.types,
  'stats': instance.stats,
  'sprites': instance.sprites,
};

PokemonTypeSlotDto _$PokemonTypeSlotDtoFromJson(Map<String, dynamic> json) =>
    PokemonTypeSlotDto(
      type: PokemonNamedResourceDto.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonTypeSlotDtoToJson(PokemonTypeSlotDto instance) =>
    <String, dynamic>{'type': instance.type};

PokemonStatDto _$PokemonStatDtoFromJson(Map<String, dynamic> json) =>
    PokemonStatDto(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: PokemonNamedResourceDto.fromJson(
        json['stat'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonStatDtoToJson(PokemonStatDto instance) =>
    <String, dynamic>{'base_stat': instance.baseStat, 'stat': instance.stat};

PokemonNamedResourceDto _$PokemonNamedResourceDtoFromJson(
  Map<String, dynamic> json,
) => PokemonNamedResourceDto(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$PokemonNamedResourceDtoToJson(
  PokemonNamedResourceDto instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

PokemonSpritesDto _$PokemonSpritesDtoFromJson(Map<String, dynamic> json) =>
    PokemonSpritesDto(
      frontDefault: json['front_default'] as String?,
      other: PokemonOtherSpritesDto.fromJson(
        json['other'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonSpritesDtoToJson(PokemonSpritesDto instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'other': instance.other,
    };

PokemonOtherSpritesDto _$PokemonOtherSpritesDtoFromJson(
  Map<String, dynamic> json,
) => PokemonOtherSpritesDto(
  officialArtwork: PokemonOfficialArtworkDto.fromJson(
    json['official-artwork'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PokemonOtherSpritesDtoToJson(
  PokemonOtherSpritesDto instance,
) => <String, dynamic>{'official-artwork': instance.officialArtwork};

PokemonOfficialArtworkDto _$PokemonOfficialArtworkDtoFromJson(
  Map<String, dynamic> json,
) => PokemonOfficialArtworkDto(frontDefault: json['front_default'] as String?);

Map<String, dynamic> _$PokemonOfficialArtworkDtoToJson(
  PokemonOfficialArtworkDto instance,
) => <String, dynamic>{'front_default': instance.frontDefault};
