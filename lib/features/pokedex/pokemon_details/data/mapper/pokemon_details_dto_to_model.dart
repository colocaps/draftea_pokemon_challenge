import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/dto/pokemon_details_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';

extension PokemonDetailsDtoToModel on PokemonDetailsResponseDto {
  PokemonDetailsModel toModel() {
    final official = sprites.other.officialArtwork.frontDefault;
    final fallback = sprites.frontDefault;
    final computed =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

    return PokemonDetailsModel(
      id: id,
      name: name,
      imageUrl: official ?? fallback ?? computed,
      height: height,
      weight: weight,
      types: types.map((e) => e.type.name).where((e) => e.isNotEmpty).toList(),
      stats: stats
          .map((e) => PokemonStatModel(name: e.stat.name, baseStat: e.baseStat))
          .toList(growable: false),
    );
  }
}
