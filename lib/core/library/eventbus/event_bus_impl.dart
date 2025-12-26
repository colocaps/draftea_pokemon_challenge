import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';
import 'package:draftea_pokemon_challenge/core/library/eventbus/ch_event_bus.dart';

@Singleton(as: ChEventBus)
class ChEventBusImpl implements ChEventBus {
  ChEventBusImpl() : _eventBus = EventBus();
  final EventBus _eventBus;

  @override
  void fire<T>(T event) {
    _eventBus.fire(event);
  }

  @override
  Stream<T> on<T>() {
    return _eventBus.on<T>();
  }

  @override
  void destroy() {
    _eventBus.destroy();
  }
}
