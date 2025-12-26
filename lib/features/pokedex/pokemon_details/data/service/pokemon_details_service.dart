// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/dto/pokemon_details_response_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_details_service.g.dart';

@singleton
@RestApi()
abstract class PokemonDetailsService {
  @factoryMethod
  factory PokemonDetailsService(Dio dio) = _PokemonDetailsService;

  @GET('pokemon/{idOrName}')
  Future<PokemonDetailsResponseDto> getPokemonDetails(
    @Path('idOrName') String idOrName,
  );
}
