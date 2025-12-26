import 'dart:async';

import 'package:draftea_pokemon_challenge/core/env/env.dart';
import 'package:draftea_pokemon_challenge/core/helpers/device.dart';
import 'package:draftea_pokemon_challenge/di/injection.dart';
import 'package:flutter/material.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  final appEnv = Env.appEnv;
  await configInjector(getIt, env: appEnv);

  final appVersion = await getIt<AppInfoRepository>().getAppVersion();
  debugPrint('appversion: buildNumber:${appVersion.buildNumber}');
  debugPrint('appversion: appName:${appVersion.appName}');
  debugPrint('appversion: packageName:${appVersion.packageName}');
  debugPrint('appversion: version:${appVersion.version}');

  runApp(await builder());
}
