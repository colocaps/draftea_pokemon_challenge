import 'package:draftea_pokemon_challenge/core/exceptions/http_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required T data}) = Success<T>;

  const factory ApiResult.failure({required HttpException exceptions}) =
      Failure<T>;
}
