// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/repository/pokemon_list_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetPokemonListUsecase {
  Future<Either<HttpException, PokemonListModel>> call({
    int? limit,
    int? offset,
  });
}

@Injectable(as: GetPokemonListUsecase)
class GetPokemonListUsecaseImpl extends GetPokemonListUsecase {
  GetPokemonListUsecaseImpl({required this.repository});

  final PokemonListRepository repository;

  @override
  Future<Either<HttpException, PokemonListModel>> call({
    int? limit,
    int? offset,
  }) {
    return repository.getPokemonList(limit: limit, offset: offset);
  }
}
