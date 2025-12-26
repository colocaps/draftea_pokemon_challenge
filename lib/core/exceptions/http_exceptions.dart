import 'package:json_annotation/json_annotation.dart';
part 'http_exceptions.g.dart';

class HttpExceptions {
  static Exception fromStatusCode(int? statusCode, ExceptionMapper data) {
    switch (statusCode) {
      case 400:
        return BadRequestException(data, statusCode: statusCode);
      case 401:
        return UnauthorizedException(data, statusCode: statusCode);
      case 403:
        return ForbiddenException(data, statusCode: statusCode);
      case 404:
        return NotFoundException(data, statusCode: statusCode);
      case 500:
        return ServerErrorException(data, statusCode: statusCode);
      case 422:
        return BadRequestException(data, statusCode: statusCode);
      default:
        return HttpException(data, statusCode: statusCode);
    }
  }
}

class HttpException implements Exception {
  HttpException(this.exceptionMapper, {this.statusCode});
  final ExceptionMapper exceptionMapper;
  final int? statusCode;

  ExceptionMapper get exception => exceptionMapper;
}

class BadRequestException extends HttpException {
  BadRequestException(super.exceptionMapper, {super.statusCode});
}

class NotExistentException extends HttpException {
  NotExistentException(super.exceptionMapper, {super.statusCode});
}

class UnauthorizedException extends HttpException {
  UnauthorizedException(super.exceptionMapper, {super.statusCode});
}

class ForbiddenException extends HttpException {
  ForbiddenException(super.exceptionMapper, {super.statusCode});
}

class NotFoundException extends HttpException {
  NotFoundException(super.exceptionMapper, {super.statusCode});
}

class ServerErrorException extends HttpException {
  ServerErrorException(super.exceptionMapper, {super.statusCode});
}

@JsonSerializable()
class ExceptionMapper {
  ExceptionMapper({this.message, this.statusCode, this.error});

  factory ExceptionMapper.fromJson(Map<String, dynamic> json) =>
      _$ExceptionMapperFromJson(json);
  final String? message;
  final int? statusCode;
  final String? error;

  Map<String, dynamic> toJson() => _$ExceptionMapperToJson(this);
}
