import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class RouterObserver extends NavigatorObserver {
  /// Creates a [RouterObserver].
  RouterObserver() {
    log.onRecord.listen((LogRecord e) => debugPrint('$e'));
  }

  /// The logged message.
  final Logger log = Logger('MyNavObserver');

  /// Almacena la ruta actual para comparar con nuevas navegaciones
  String? _currentRouteName;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final routeName = route.settings.name;

    // Si intentamos navegar a la misma ruta, cancelamos la navegación
    if (routeName != null && routeName == _currentRouteName) {
      log.info('Navegación duplicada cancelada: $routeName');
      // Importante: con go_router (Navigator 2.0 / page-based) NO se debe
      // completar/remover una ruta con APIs imperativas (removeRoute/pop) desde
      // un NavigatorObserver. Eso dispara asserts del tipo:
      // "A page-based route cannot be completed using imperative api".
      //
      // Si querés evitar duplicados, hacelo en el punto de navegación
      // (usar go/goNamed en vez de push, o agregar guards antes de navegar).
      return;
    }

    _currentRouteName = routeName;
    log.info('didPush: ${route.str}, previousRoute= ${previousRoute?.str}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _currentRouteName = previousRoute?.settings.name;
    log.info('didPop: ${route.str}, previousRoute= ${previousRoute?.str}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _currentRouteName = previousRoute?.settings.name;
    log.info('didRemove: ${route.str}, previousRoute= ${previousRoute?.str}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _currentRouteName = newRoute?.settings.name;
    log.info('didReplace: new= ${newRoute?.str}, old= ${oldRoute?.str}');
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) => log.info(
    'didStartUserGesture: ${route.str}, '
    'previousRoute= ${previousRoute?.str}',
  );

  @override
  void didStopUserGesture() => log.info('didStopUserGesture');
}

extension on Route<dynamic> {
  String get str => 'route(${settings.name}: ${settings.arguments})';
}
