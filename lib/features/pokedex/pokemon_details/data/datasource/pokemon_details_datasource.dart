// ignore_for_file: one_member_abstracts

import 'package:draftea_pokemon_challenge/core/api/api_result.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/dto/pokemon_details_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/service/pokemon_details_service.dart';
import 'package:injectable/injectable.dart';

abstract class PokemonDetailsRemoteDataSource {
  Future<ApiResult<PokemonDetailsResponseDto>> getPokemonDetails({
    required String idOrName,
  });
}

@Injectable(as: PokemonDetailsRemoteDataSource)
class PokemonDetailsDatasourceImpl extends BaseDataSource
    implements PokemonDetailsRemoteDataSource {
  PokemonDetailsDatasourceImpl({required PokemonDetailsService service})
    : _service = service;

  final PokemonDetailsService _service;

  @override
  Future<ApiResult<PokemonDetailsResponseDto>> getPokemonDetails({
    required String idOrName,
  }) {
    return executeRequest(function: () => _service.getPokemonDetails(idOrName));
  }
}
