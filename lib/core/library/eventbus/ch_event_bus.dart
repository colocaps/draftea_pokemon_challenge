/// Interfaz abstracta para el EventBus
abstract class ChEventBus {
  /// Publica un evento en el bus
  void fire<T>(T event);

  /// Suscribe a un tipo específico de evento
  Stream<T> on<T>();

  /// Cierra el EventBus y libera recursos
  void destroy();
}
