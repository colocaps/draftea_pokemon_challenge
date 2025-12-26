// ignore_for_file: one_member_abstracts

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:draftea_pokemon_challenge/core/api/api_result.dart';
import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';

abstract class BaseRepository {
  Future<Either<HttpException, MODEL>> executeDataSource<RESP, MODEL>({
    required Future<ApiResult<RESP>> Function() function,
  }) async {
    try {
      final result = await function();

      return result.when(
        success: (value) {
          if (value is BaseDtoResponse<MODEL>) {
            return Right(value.toDomainModel());
          } else {
            return Right(value as MODEL);
          }
        },
        failure: (error) {
          throw error;
        },
      );
    } on HttpException catch (e) {
      log('Error in BaseRepository DataError: $e');
      return Left(HttpException(e.exceptionMapper, statusCode: e.statusCode));
    } catch (e) {
      log('Error in BaseRepository Exception: $e');
      return Left(HttpException(ExceptionMapper()));
    }
  }

  // Método específico para manejar listas de DTOs
  Future<Either<HttpException, List<MODEL>>> executeDataSourceList<
    RESP,
    MODEL
  >({required Future<ApiResult<List<RESP>>> Function() function}) async {
    try {
      final result = await function();

      return result.when(
        success: (value) {
          final dtoList = value as List<dynamic>;
          // Intentar convertir cada elemento si es BaseDtoResponse
          final modelList = dtoList.map((item) {
            if (item is BaseDtoResponse) {
              return item.toDomainModel() as MODEL;
            } else {
              return item as MODEL;
            }
          }).toList();
          return Right(modelList);
        },
        failure: (error) {
          throw error;
        },
      );
    } on HttpException catch (e) {
      log('Error in BaseRepository DataError: $e');
      return Left(HttpException(e.exceptionMapper, statusCode: e.statusCode));
    } catch (e) {
      log('Error in BaseRepository Exception: $e');
      return Left(HttpException(ExceptionMapper()));
    }
  }
}

abstract class BaseDtoResponse<T> {
  T toDomainModel();
}
