import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_repository.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/datasource/pokemon_list_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/dto/pokemon_list_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/repository/pokemon_list_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PokemonListRepository)
class PokemonListRepositoryImpl extends BaseRepository
    implements PokemonListRepository {
  PokemonListRepositoryImpl({required this.remoteDataSource});

  final PokemonListRemoteDataSource remoteDataSource;

  @override
  Future<Either<HttpException, PokemonListModel>> getPokemonList({
    int? limit,
    int? offset,
  }) {
    return executeDataSource<PokemonListResponseDto, PokemonListModel>(
      function: () =>
          remoteDataSource.getPokemonList(limit: limit, offset: offset),
    );
  }
}
