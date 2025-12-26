import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:draftea_pokemon_challenge/core/api/api_result.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:draftea_pokemon_challenge/core/repository/app_repository.dart';
import 'package:draftea_pokemon_challenge/di/injection.dart';

abstract class BaseDataSource {
  Future<ApiResult<T>> executeRequest<T>({
    required Future<T> Function() function,
    Future<void> Function()? onUnauthorized,
  }) async {
    try {
      final apiResult = await function();
      return ApiResult.success(data: apiResult);
    } on DioException catch (e) {
      final dataException = HttpExceptions.fromStatusCode(
        e.response!.statusCode,
        ExceptionMapper.fromJson(e.response!.data as Map<String, dynamic>),
      );
      if (dataException is UnauthorizedException) {
        clearAppCache();
      }
      log('Error in BaseDataSource DioError error: ${e.error}');
      log('Error in BaseDataSource DioError type: ${e.type}');
      log('Error in BaseDataSource DioError message: ${e.message}');
      return ApiResult.failure(
        exceptions: HttpException(
          ExceptionMapper.fromJson(e.response!.data as Map<String, dynamic>),
          statusCode: e.response?.statusCode,
        ),
      );
    } catch (e) {
      log('Error in BaseDataSource Exception: $e');
      return ApiResult.failure(
        exceptions: HttpException(ExceptionMapper(message: e.toString())),
      );
    }
  }

  void clearAppCache() {}
}
