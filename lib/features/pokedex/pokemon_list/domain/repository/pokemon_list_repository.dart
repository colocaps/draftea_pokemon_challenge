// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';

abstract class PokemonListRepository {
  Future<Either<HttpException, PokemonListModel>> getPokemonList({
    int? limit,
    int? offset,
  });
}
