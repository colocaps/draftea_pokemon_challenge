import 'dart:async';

import 'package:injectable/injectable.dart';

@lazySingleton
class LobbyTimerService {
  Timer? timer;
  void starTimer(
    Duration duration,
    void Function(Timer) callback,
  ) {
    timer = Timer.periodic(duration, callback);
  }

  void dispose() {
    timer?.cancel();
  }
}

@lazySingleton
class GetLobbyTimerService {
  Timer? timer;
  void starTimer(
    Duration duration,
    void Function(Timer) callback,
  ) {
    timer = Timer.periodic(duration, callback);
  }

  void dispose() {
    timer?.cancel();
  }
}

@lazySingleton
class GameTimerService {
  Timer? timer;
  void starTimer(
    Duration duration,
    void Function(Timer) callback,
  ) {
    timer = Timer.periodic(duration, callback);
  }

  void dispose() {
    timer?.cancel();
  }
}

@lazySingleton
class LobbyListTimerService {
  Timer? timer;
  void starTimer(
    Duration duration,
    void Function(Timer) callback,
  ) {
    timer = Timer.periodic(duration, callback);
  }

  void dispose() {
    timer?.cancel();
  }
}

@lazySingleton
class UserTimerService {
  Timer? timer;
  void starTimer(
    Duration duration,
    void Function(Timer) callback,
  ) {
    timer = Timer.periodic(duration, callback);
  }

  void dispose() {
    timer?.cancel();
  }
}
