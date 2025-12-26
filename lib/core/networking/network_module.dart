import 'package:dio/dio.dart';
import 'package:draftea_pokemon_challenge/core/networking/inerceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  Dio _baseDio(Interceptor? apiInterceptor, PrettyDioLogger logger) {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    if (apiInterceptor != null) {
      dio.interceptors.add(apiInterceptor);
    }
    if (!kReleaseMode) {
      dio.interceptors.add(logger);
    }
    return dio;
  }

  @lazySingleton
  Dio drafteaPokemonChallengeDio(
    DrafteaInterceptor drafteaPokemonChallengeinterceptor,
    PrettyDioLogger logger,
  ) {
    return _baseDio(drafteaPokemonChallengeinterceptor, logger);
  }
}
