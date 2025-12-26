// ignore_for_file: inference_failure_on_function_invocation, one_member_abstracts, lines_longer_than_80_chars
import 'package:draftea_pokemon_challenge/core/api/api_result.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/dto/pokemon_list_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/service/pokemon_list_service.dart';
import 'package:injectable/injectable.dart';

// datasource interface
abstract class PokemonListRemoteDataSource {
  Future<ApiResult<PokemonListResponseDto>> getPokemonList({
    int? limit,
    int? offset,
  });
}

@Injectable(as: PokemonListRemoteDataSource)
class PokemonListDatasourceImpl extends BaseDataSource
    implements PokemonListRemoteDataSource {
  PokemonListDatasourceImpl({required PokemonListService service})
    : _service = service;
  final PokemonListService _service;

  @override
  Future<ApiResult<PokemonListResponseDto>> getPokemonList({
    int? limit,
    int? offset,
  }) {
    return executeRequest(
      function: () => _service.getPokemonList(limit: limit, offset: offset),
    );
  }
}
