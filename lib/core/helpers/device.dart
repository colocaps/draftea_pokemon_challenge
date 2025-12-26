import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:universal_platform/universal_platform.dart';

abstract class AppInfoRepository {
  String? getPlatformInfo();
  bool isDarkMode(BuildContext context);
  Future<AppVersion> getAppVersion();
}

@Injectable(as: AppInfoRepository)
class AppInfoRepositoryImpl implements AppInfoRepository {
  @override
  String? getPlatformInfo() {
    if (UniversalPlatform.isAndroid) {
      return DevicePlatform.android.name;
    } else if (UniversalPlatform.isIOS) {
      return DevicePlatform.ios.name;
    } else if (UniversalPlatform.isWindows) {
      return DevicePlatform.windows.name;
    } else if (UniversalPlatform.isLinux) {
      return DevicePlatform.linux.name;
    } else if (UniversalPlatform.isMacOS) {
      return DevicePlatform.mac.name;
    } else if (UniversalPlatform.isWeb) {
      return DevicePlatform.web.name;
    } else if (UniversalPlatform.isFuchsia) {
      return DevicePlatform.fuchsia.name;
    }
    return null;
  }

  @override
  bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  @override
  Future<AppVersion> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return AppVersion(
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
    );
  }
}

class AppVersion {
  AppVersion({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });
  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;
}

enum DevicePlatform { android, ios, web, mac, linux, windows, fuchsia }
