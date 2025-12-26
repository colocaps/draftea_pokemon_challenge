// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:draftea_pokemon_challenge/core/connectivity/connectivity_check_bloc.dart'
    as _i395;
import 'package:draftea_pokemon_challenge/core/helpers/device.dart' as _i625;
import 'package:draftea_pokemon_challenge/core/library/eventbus/ch_event_bus.dart'
    as _i889;
import 'package:draftea_pokemon_challenge/core/library/eventbus/event_bus_impl.dart'
    as _i65;
import 'package:draftea_pokemon_challenge/core/networking/inerceptor.dart'
    as _i1065;
import 'package:draftea_pokemon_challenge/core/networking/interceptor.dart'
    as _i969;
import 'package:draftea_pokemon_challenge/core/networking/logger_module.dart'
    as _i132;
import 'package:draftea_pokemon_challenge/core/networking/network_module.dart'
    as _i276;
import 'package:draftea_pokemon_challenge/core/session/token.dart' as _i931;
import 'package:draftea_pokemon_challenge/core/utils/timer_service.dart'
    as _i854;
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/datasource/pokemon_list_datasource.dart'
    as _i943;
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/repository/pokemon_list_repository_impl.dart'
    as _i818;
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/data/service/pokemon_list_service.dart'
    as _i180;
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/repository/pokemon_list_repository.dart'
    as _i624;
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/usecase/get_pokemon_list_usecase.dart'
    as _i332;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final loggerModule = _$LoggerModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i395.ConnectivityCheckBloc>(
      () => _i395.ConnectivityCheckBloc(),
    );
    gh.factory<_i528.PrettyDioLogger>(() => loggerModule.prettyDioLogger);
    gh.factory<_i931.Token>(() => _i931.Token());
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i854.LobbyTimerService>(() => _i854.LobbyTimerService());
    gh.lazySingleton<_i854.GetLobbyTimerService>(
      () => _i854.GetLobbyTimerService(),
    );
    gh.lazySingleton<_i854.GameTimerService>(() => _i854.GameTimerService());
    gh.lazySingleton<_i854.LobbyListTimerService>(
      () => _i854.LobbyListTimerService(),
    );
    gh.lazySingleton<_i854.UserTimerService>(() => _i854.UserTimerService());
    gh.factory<_i625.AppInfoRepository>(() => _i625.AppInfoRepositoryImpl());
    gh.singleton<_i889.ChEventBus>(() => _i65.ChEventBusImpl());
    gh.factory<_i969.draftea_pokemon_challengeInterceptor>(
      () => _i969.draftea_pokemon_challengeInterceptor(
        appInfoRepository: gh<_i625.AppInfoRepository>(),
      ),
    );
    gh.factory<_i1065.DrafteaInterceptor>(
      () => _i1065.DrafteaInterceptor(
        appInfoRepository: gh<_i625.AppInfoRepository>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.drafteaPokemonChallengeDio(
        gh<_i1065.DrafteaInterceptor>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.singleton<_i180.PokemonListService>(
      () => _i180.PokemonListService.new(gh<_i361.Dio>()),
    );
    gh.factory<_i943.PokemonListRemoteDataSource>(
      () => _i943.PokemonListDatasourceImpl(
        service: gh<_i180.PokemonListService>(),
      ),
    );
    gh.factory<_i624.PokemonListRepository>(
      () => _i818.PokemonListRepositoryImpl(
        remoteDataSource: gh<_i943.PokemonListRemoteDataSource>(),
      ),
    );
    gh.factory<_i332.GetPokemonListUsecase>(
      () => _i332.GetPokemonListUsecaseImpl(
        repository: gh<_i624.PokemonListRepository>(),
      ),
    );
    return this;
  }
}

class _$LoggerModule extends _i132.LoggerModule {}

class _$NetworkModule extends _i276.NetworkModule {}
