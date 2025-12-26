import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_repository.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/datasource/pokemon_details_local_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/dto/pokemon_details_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/repository/pokemon_details_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PokemonDetailsRepository)
class PokemonDetailsRepositoryImpl extends BaseRepository
    implements PokemonDetailsRepository {
  PokemonDetailsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final PokemonDetailsRemoteDataSource remoteDataSource;
  final PokemonDetailsLocalDataSource localDataSource;

  @override
  Future<Either<HttpException, PokemonDetailsModel>> getPokemonDetails({
    required String idOrName,
  }) {
    return _getPokemonDetailsWithCache(idOrName: idOrName);
  }

  Future<Either<HttpException, PokemonDetailsModel>>
  _getPokemonDetailsWithCache({required String idOrName}) async {
    final remote =
        await executeDataSource<PokemonDetailsResponseDto, PokemonDetailsModel>(
          function: () =>
              remoteDataSource.getPokemonDetails(idOrName: idOrName),
        );

    return remote.fold<Future<Either<HttpException, PokemonDetailsModel>>>(
      (err) async {
        final status = err.statusCode;
        final isRecoverable = status == null || (status >= 500);
        if (isRecoverable) {
          final cached = await localDataSource.getCachedPokemonDetails(
            idOrName: idOrName,
          );
          if (cached != null) return Right(cached);
        }
        return Left(err);
      },
      (model) async {
        await localDataSource.cachePokemonDetails(
          idOrName: idOrName,
          model: model,
        );
        return Right(model);
      },
    );
  }
}
