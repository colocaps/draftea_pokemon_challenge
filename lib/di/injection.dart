import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:draftea_pokemon_challenge/core/env/environment.dart' as app_env;
import 'package:draftea_pokemon_challenge/di/injection.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  return getIt.init(environmentFilter: environmentFilter, environment: env);
}

/// Configura el injector con el ambiente mapeado desde APP_ENV
Future<GetIt> configInjectorWithAppEnv(String appEnv) async {
  final mappedEnv = app_env.Environment.mapFromAppEnv(appEnv);
  return configInjector(getIt, env: mappedEnv);
}
