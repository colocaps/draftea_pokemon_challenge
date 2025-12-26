import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class LoggerModule {
  @lazySingleton
  Logger get logger => Logger(filter: LoggerFilter(), printer: PrettyPrinter());

  PrettyDioLogger get prettyDioLogger =>
      PrettyDioLogger(requestHeader: true, requestBody: true);
}

class LoggerFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return !kReleaseMode;
  }
}
