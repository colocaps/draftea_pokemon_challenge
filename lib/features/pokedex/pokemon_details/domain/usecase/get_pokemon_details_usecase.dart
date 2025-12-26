// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/repository/pokemon_details_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetPokemonDetailsUsecase {
  Future<Either<HttpException, PokemonDetailsModel>> call({
    required String idOrName,
  });
}

@Injectable(as: GetPokemonDetailsUsecase)
class GetPokemonDetailsUsecaseImpl extends GetPokemonDetailsUsecase {
  GetPokemonDetailsUsecaseImpl({required this.repository});

  final PokemonDetailsRepository repository;

  @override
  Future<Either<HttpException, PokemonDetailsModel>> call({
    required String idOrName,
  }) {
    return repository.getPokemonDetails(idOrName: idOrName);
  }
}
