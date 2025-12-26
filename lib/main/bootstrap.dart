import 'dart:async';
import 'dart:developer';

import 'package:draftea_pokemon_challenge/core/env/env.dart';
import 'package:draftea_pokemon_challenge/core/helpers/device.dart';
import 'package:draftea_pokemon_challenge/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final appEnv = Env.appEnv;
  await configInjector(getIt, env: appEnv);

  final appVersion = await getIt<AppInfoRepository>().getAppVersion();
  log('appversion: buildNumber:${appVersion.buildNumber}');
  log('appversion: appName:${appVersion.appName}');
  log('appversion: packageName:${appVersion.packageName}');
  log('appversion: version:${appVersion.version}');

  runApp(await builder());
}
