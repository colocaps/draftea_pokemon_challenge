import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    String? userId,
    String? userName,
    String? email,
    String? name,
    String? lastName,
    bool? enabled,
    String? status,
    String? documentNumber,
    String? selfieUrl,
    String? documentFrontUrl,
    String? documentBackUrl,
    String? avatar,
    bool? tyc,
    DateTime? birthDate,
    int? balance,
    List<TransactionHistoryModel>? transactionHistory,
    bool? isKycPhotoEnabled,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class TransactionHistoryModel with _$TransactionHistoryModel {
  const factory TransactionHistoryModel({
    String? type,
    int? amount,
    int? initAmount,
    int? finalAmount,
    String? description,
    String? source,
    DateTime? time,
  }) = _TransactionHistoryModel;
  factory TransactionHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryModelFromJson(json);
}

enum UserStatus {
  inProgress,
  pendingPhoto,
  pendingValidation,
  rejected,
  validated,
  locked,
  deleted;

  static String fromName(UserStatus status) {
    switch (status) {
      case UserStatus.inProgress:
        return 'IN_PROGRESS';
      case UserStatus.pendingPhoto:
        return 'PENDING_PHOTO';
      case UserStatus.pendingValidation:
        return 'PENDING_VALIDATION';
      case UserStatus.rejected:
        return 'REJECTED';
      case UserStatus.validated:
        return 'VALIDATED';
      case UserStatus.locked:
        return 'LOCKED';
      case UserStatus.deleted:
        return 'DELETED';
    }
  }

  static UserStatus fromString(String status) {
    switch (status.toUpperCase()) {
      case 'IN_PROGRESS':
        return UserStatus.inProgress;
      case 'PENDING_PHOTO':
        return UserStatus.pendingPhoto;
      case 'PENDING_VALIDATION':
        return UserStatus.pendingValidation;
      case 'REJECTED':
        return UserStatus.rejected;
      case 'VALIDATED':
        return UserStatus.validated;
      case 'LOCKED':
        return UserStatus.locked;
      case 'DELETED':
        return UserStatus.deleted;
      default:
        return UserStatus.inProgress;
    }
  }
}
