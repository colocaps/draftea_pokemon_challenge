import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_repository.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/datasource/pokemon_list_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/datasource/pokemon_list_local_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/dto/pokemon_list_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/repository/pokemon_list_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PokemonListRepository)
class PokemonListRepositoryImpl extends BaseRepository
    implements PokemonListRepository {
  PokemonListRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final PokemonListRemoteDataSource remoteDataSource;
  final PokemonListLocalDataSource localDataSource;

  @override
  Future<Either<HttpException, PokemonListModel>> getPokemonList({
    int? limit,
    int? offset,
  }) {
    return _getPokemonListWithCache(limit: limit, offset: offset);
  }

  Future<Either<HttpException, PokemonListModel>> _getPokemonListWithCache({
    int? limit,
    int? offset,
  }) async {
    final remote =
        await executeDataSource<PokemonListResponseDto, PokemonListModel>(
          function: () =>
              remoteDataSource.getPokemonList(limit: limit, offset: offset),
        );

    return remote.fold<Future<Either<HttpException, PokemonListModel>>>(
      (err) async {
        final status = err.statusCode;
        final isRecoverable = status == null || (status >= 500);
        if (isRecoverable) {
          final cached = await localDataSource.getCachedPokemonList();
          if (cached != null) return Right(cached);
        }
        return Left(err);
      },
      (model) async {
        if ((offset ?? 0) > 0) {
          final cached = await localDataSource.getCachedPokemonList();
          if (cached != null) {
            final merged = PokemonListModel(
              count: model.count,
              next: model.next,
              previous: model.previous,
              results: <PokemonListItemModel>[
                ...cached.results,
                ...model.results,
              ],
            );
            await localDataSource.cachePokemonList(merged);
          } else {
            await localDataSource.cachePokemonList(model);
          }
        } else {
          await localDataSource.cachePokemonList(model);
        }
        return Right(model);
      },
    );
  }
}
