// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['userId'] as String?,
  userName: json['userName'] as String?,
  email: json['email'] as String?,
  name: json['name'] as String?,
  lastName: json['lastName'] as String?,
  enabled: json['enabled'] as bool?,
  status: json['status'] as String?,
  documentNumber: json['documentNumber'] as String?,
  selfieUrl: json['selfieUrl'] as String?,
  documentFrontUrl: json['documentFrontUrl'] as String?,
  documentBackUrl: json['documentBackUrl'] as String?,
  avatar: json['avatar'] as String?,
  tyc: json['tyc'] as bool?,
  birthDate: json['birthDate'] == null
      ? null
      : DateTime.parse(json['birthDate'] as String),
  balance: (json['balance'] as num?)?.toInt(),
  transactionHistory: (json['transactionHistory'] as List<dynamic>?)
      ?.map((e) => TransactionHistoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  isKycPhotoEnabled: json['isKycPhotoEnabled'] as bool?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'name': instance.name,
      'lastName': instance.lastName,
      'enabled': instance.enabled,
      'status': instance.status,
      'documentNumber': instance.documentNumber,
      'selfieUrl': instance.selfieUrl,
      'documentFrontUrl': instance.documentFrontUrl,
      'documentBackUrl': instance.documentBackUrl,
      'avatar': instance.avatar,
      'tyc': instance.tyc,
      'birthDate': instance.birthDate?.toIso8601String(),
      'balance': instance.balance,
      'transactionHistory': instance.transactionHistory,
      'isKycPhotoEnabled': instance.isKycPhotoEnabled,
    };

_TransactionHistoryModel _$TransactionHistoryModelFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryModel(
  type: json['type'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  initAmount: (json['initAmount'] as num?)?.toInt(),
  finalAmount: (json['finalAmount'] as num?)?.toInt(),
  description: json['description'] as String?,
  source: json['source'] as String?,
  time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
);

Map<String, dynamic> _$TransactionHistoryModelToJson(
  _TransactionHistoryModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'amount': instance.amount,
  'initAmount': instance.initAmount,
  'finalAmount': instance.finalAmount,
  'description': instance.description,
  'source': instance.source,
  'time': instance.time?.toIso8601String(),
};
