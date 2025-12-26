// ignore_for_file: lines_longer_than_80_chars

/// Clase que define los ambientes disponibles para GetIt/Injectable
/// Estos ambientes deben coincidir con los valores de APP_ENV en
///  los archivos JSON
library;

class Environment {
  /// Ambiente de desarrollo
  static const String dev = 'dev';

  /// Ambiente de producción
  static const String prod = 'prod';

  /// Ambiente de testing/mock
  static const String mock = 'mock';

  /// Lista de todos los ambientes disponibles
  static const List<String> allEnvironments = [dev, prod, mock];

  /// Mapea el valor de APP_ENV del JSON a un ambiente de GetIt
  /// Si no se reconoce el ambiente, retorna 'dev' por defecto
  static String mapFromAppEnv(String appEnv) {
    final normalizedEnv = appEnv.trim();

    switch (normalizedEnv) {
      case 'development':
      case 'dev':
      case 'appDev':
      case 'appDevWeb':
        return dev;
      case 'production':
      case 'prod':
      case 'appProd':
      case 'appProdWeb':
        return prod;
      case 'mock':
      case 'test':
      case 'testing':
      case 'appMock':
      case 'appMockWeb':
        return mock;
      default:
        return dev; // Por defecto usamos dev
    }
  }
}
