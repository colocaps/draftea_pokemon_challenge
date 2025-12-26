import 'package:dio/dio.dart' show RequestInterceptorHandler, RequestOptions;
import 'package:draftea_pokemon_challenge/core/env/env.dart';
import 'package:draftea_pokemon_challenge/core/extentions/string_extentions.dart';
import 'package:draftea_pokemon_challenge/core/helpers/device.dart';
import 'package:draftea_pokemon_challenge/core/networking/base_interceptor.dart';
import 'package:injectable/injectable.dart';

import 'package:retrofit/dio.dart';

const authorization = Extra({'Authorization': true});
const source = Extra({'source': true});
const version = Extra({'version': true});

@injectable
class DrafteaInterceptor extends BaseInterceptor {
  DrafteaInterceptor({required this.appInfoRepository});
  final AppInfoRepository appInfoRepository;

  @override
  Future<String> get baseUrl async {
    return Env.baseUrl;
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Access-Control-Allow-Origin'] = '*';
    options
      ..connectTimeout = const Duration(seconds: 30)
      ..baseUrl = await baseUrl;
    //  final token = await getFirebaseAuthToken();
    //TODO: Add token
    if (hasExtra(source, options)) {
      options.headers['source'] = appInfoRepository.getPlatformInfo();
    }
    if (hasExtra(version, options)) {
      final appVersion = await appInfoRepository.getAppVersion();
      options.headers['version'] = appVersion.version.getCleanVersion();
    }
    // if (token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // } else {
    //   options.headers.remove('Authorization');
    // }
    options.validateStatus = (statusCode) {
      if (statusCode == null) {
        return false;
      }
      if (statusCode == 422) {
        return false;
      } else {
        return statusCode >= 200 && statusCode < 300;
      }
    };

    return super.onRequest(options, handler);
  }
}
