import 'package:draftea_pokemon_challenge/core/networking/base_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_list_response_dto.g.dart';

@JsonSerializable()
class PokemonListResponseDto extends BaseDtoResponse<PokemonListResponseDto> {
  PokemonListResponseDto({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokemonListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseDtoFromJson(json);

  final int count;

  final String? next;

  final String? previous;

  @JsonKey(defaultValue: <PokemonListItemDto>[])
  final List<PokemonListItemDto> results;

  Map<String, dynamic> toJson() => _$PokemonListResponseDtoToJson(this);

  @override
  PokemonListResponseDto toDomainModel() => this;
}

@JsonSerializable()
class PokemonListItemDto {
  PokemonListItemDto({required this.name, required this.url});

  factory PokemonListItemDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonListItemDtoFromJson(json);

  final String name;
  final String url;

  Map<String, dynamic> toJson() => _$PokemonListItemDtoToJson(this);
}
