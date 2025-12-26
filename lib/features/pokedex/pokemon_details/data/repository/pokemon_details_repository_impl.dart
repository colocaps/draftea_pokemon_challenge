import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_repository.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/data/dto/pokemon_details_response_dto.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/repository/pokemon_details_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PokemonDetailsRepository)
class PokemonDetailsRepositoryImpl extends BaseRepository
    implements PokemonDetailsRepository {
  PokemonDetailsRepositoryImpl({required this.remoteDataSource});

  final PokemonDetailsRemoteDataSource remoteDataSource;

  @override
  Future<Either<HttpException, PokemonDetailsModel>> getPokemonDetails({
    required String idOrName,
  }) {
    return executeDataSource<PokemonDetailsResponseDto, PokemonDetailsModel>(
      function: () => remoteDataSource.getPokemonDetails(idOrName: idOrName),
    );
  }
}
