import 'package:web/web.dart' as web;

class WebCheckerImpl {
  bool isInInstagramBrowser() {
    final userAgent = web.window.navigator.userAgent.toLowerCase();
    return userAgent.contains('instagram');
  }

  bool isSupportedBrowser() {
    final userAgent = web.window.navigator.userAgent.toLowerCase();

    return userAgent.contains('chrome') ||
        userAgent.contains('safari') && !userAgent.contains('chrome') ||
        userAgent.contains('firefox') ||
        userAgent.contains('opera') ||
        userAgent.contains('opr') ||
        userAgent.contains('edge') ||
        userAgent.contains('edg');
  }
}
