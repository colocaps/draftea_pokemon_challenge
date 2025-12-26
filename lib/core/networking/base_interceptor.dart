import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/dio.dart';

abstract class BaseInterceptor extends Interceptor {
  Future<String> get baseUrl;

  bool hasExtra(Extra extra, RequestOptions options) {
    final key = extra.data.keys.first;
    return (options.extra[key] as bool?) ?? false;
  }

  @override
  @mustCallSuper
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return super.onRequest(options, handler);
  }

  @override
  @mustCallSuper
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    super.onResponse(response, handler);
  }

  @override
  @mustCallSuper
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
