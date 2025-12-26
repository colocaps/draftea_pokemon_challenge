import 'dart:async';
import 'dart:developer';

abstract class ReactHandler<T> {
  T? currentValue;

  final StreamController<T?> _streamController =
      StreamController<T?>.broadcast();

  void notify(T? model) {
    try {
      currentValue = model;
      _streamController.add(model);
    } catch (e, stack) {
      log('[ReactHandler] ❌ Error in notify: $e\n$stack');
      log('[ReactHandler] Model type: ${model.runtimeType}, Expected: $T');
    }
  }

  StreamSubscription<T?> listen(void Function(T?) action) {
    return _streamController.stream.asBroadcastStream().listen(
      action,
      onError: (Object error, StackTrace stack) {
        log('[ReactHandler] ❌ Error in stream listener: $error\n$stack');
      },
    );
  }

  void dispose() {
    _streamController.close();
  }
}
