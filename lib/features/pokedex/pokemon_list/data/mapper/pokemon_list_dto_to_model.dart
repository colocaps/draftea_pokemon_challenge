import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/dto/pokemon_list_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';

extension PokemonListDtoToModel on PokemonListResponseDto {
  PokemonListModel toModel() {
    return PokemonListModel(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toModel()).toList(),
    );
  }
}

extension PokemonListItemDtoToModel on PokemonListItemDto {
  PokemonListItemModel toModel() {
    return PokemonListItemModel(name: name, url: url);
  }
}
