class SocketExceptions implements Exception {
  SocketExceptions({required this.code});
  final String code;
}

class SocketError implements SocketExceptions {
  SocketError({required this.errorCode});
  final String errorCode;
  @override
  String get code => errorCode;
}
