// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_exceptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExceptionMapper _$ExceptionMapperFromJson(Map<String, dynamic> json) =>
    ExceptionMapper(
      message: json['message'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ExceptionMapperToJson(ExceptionMapper instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'error': instance.error,
    };
