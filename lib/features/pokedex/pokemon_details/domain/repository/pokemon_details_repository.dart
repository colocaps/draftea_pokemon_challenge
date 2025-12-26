// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';

abstract class PokemonDetailsRepository {
  Future<Either<HttpException, PokemonDetailsModel>> getPokemonDetails({
    required String idOrName,
  });
}
