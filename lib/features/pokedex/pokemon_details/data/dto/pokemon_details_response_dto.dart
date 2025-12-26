import 'package:draftea_pokemon_challenge/core/networking/base_repository.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/mapper/pokemon_details_dto_to_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_details_response_dto.g.dart';

@JsonSerializable()
class PokemonDetailsResponseDto extends BaseDtoResponse<PokemonDetailsModel> {
  PokemonDetailsResponseDto({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.stats,
    required this.sprites,
  });

  factory PokemonDetailsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsResponseDtoFromJson(json);

  final int id;
  final String name;
  final int height;
  final int weight;

  @JsonKey(defaultValue: <PokemonTypeSlotDto>[])
  final List<PokemonTypeSlotDto> types;

  @JsonKey(defaultValue: <PokemonStatDto>[])
  final List<PokemonStatDto> stats;
  final PokemonSpritesDto sprites;

  Map<String, dynamic> toJson() => _$PokemonDetailsResponseDtoToJson(this);

  @override
  PokemonDetailsModel toDomainModel() => toModel();
}

@JsonSerializable()
class PokemonTypeSlotDto {
  PokemonTypeSlotDto({required this.type});

  factory PokemonTypeSlotDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotDtoFromJson(json);

  final PokemonNamedResourceDto type;

  Map<String, dynamic> toJson() => _$PokemonTypeSlotDtoToJson(this);
}

@JsonSerializable()
class PokemonStatDto {
  PokemonStatDto({required this.baseStat, required this.stat});

  factory PokemonStatDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatDtoFromJson(json);

  @JsonKey(name: 'base_stat')
  final int baseStat;
  final PokemonNamedResourceDto stat;

  Map<String, dynamic> toJson() => _$PokemonStatDtoToJson(this);
}

@JsonSerializable()
class PokemonNamedResourceDto {
  PokemonNamedResourceDto({required this.name, required this.url});

  factory PokemonNamedResourceDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonNamedResourceDtoFromJson(json);

  final String name;
  final String url;

  Map<String, dynamic> toJson() => _$PokemonNamedResourceDtoToJson(this);
}

@JsonSerializable()
class PokemonSpritesDto {
  PokemonSpritesDto({required this.frontDefault, required this.other});

  factory PokemonSpritesDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesDtoFromJson(json);

  @JsonKey(name: 'front_default')
  final String? frontDefault;
  final PokemonOtherSpritesDto other;

  Map<String, dynamic> toJson() => _$PokemonSpritesDtoToJson(this);
}

@JsonSerializable()
class PokemonOtherSpritesDto {
  PokemonOtherSpritesDto({required this.officialArtwork});

  factory PokemonOtherSpritesDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonOtherSpritesDtoFromJson(json);

  @JsonKey(name: 'official-artwork')
  final PokemonOfficialArtworkDto officialArtwork;

  Map<String, dynamic> toJson() => _$PokemonOtherSpritesDtoToJson(this);
}

@JsonSerializable()
class PokemonOfficialArtworkDto {
  PokemonOfficialArtworkDto({required this.frontDefault});

  factory PokemonOfficialArtworkDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkDtoFromJson(json);

  @JsonKey(name: 'front_default')
  final String? frontDefault;

  Map<String, dynamic> toJson() => _$PokemonOfficialArtworkDtoToJson(this);
}
