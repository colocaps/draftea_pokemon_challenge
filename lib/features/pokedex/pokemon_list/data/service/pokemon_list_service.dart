// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:draftea_pokemon_challenge/core/networking/interceptor.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/dto/pokemon_list_response_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_list_service.g.dart';

@singleton
@RestApi()
abstract class PokemonListService {
  @factoryMethod
  factory PokemonListService(Dio dio) = _PokemonListService;

  @GET('pokemon')
  @authorization
  Future<PokemonListResponseDto> getPokemonList({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });
}
