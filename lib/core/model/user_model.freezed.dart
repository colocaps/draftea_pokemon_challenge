// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String? get userId; String? get userName; String? get email; String? get name; String? get lastName; bool? get enabled; String? get status; String? get documentNumber; String? get selfieUrl; String? get documentFrontUrl; String? get documentBackUrl; String? get avatar; bool? get tyc; DateTime? get birthDate; int? get balance; List<TransactionHistoryModel>? get transactionHistory; bool? get isKycPhotoEnabled;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.selfieUrl, selfieUrl) || other.selfieUrl == selfieUrl)&&(identical(other.documentFrontUrl, documentFrontUrl) || other.documentFrontUrl == documentFrontUrl)&&(identical(other.documentBackUrl, documentBackUrl) || other.documentBackUrl == documentBackUrl)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.tyc, tyc) || other.tyc == tyc)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.transactionHistory, transactionHistory)&&(identical(other.isKycPhotoEnabled, isKycPhotoEnabled) || other.isKycPhotoEnabled == isKycPhotoEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,email,name,lastName,enabled,status,documentNumber,selfieUrl,documentFrontUrl,documentBackUrl,avatar,tyc,birthDate,balance,const DeepCollectionEquality().hash(transactionHistory),isKycPhotoEnabled);

@override
String toString() {
  return 'UserModel(userId: $userId, userName: $userName, email: $email, name: $name, lastName: $lastName, enabled: $enabled, status: $status, documentNumber: $documentNumber, selfieUrl: $selfieUrl, documentFrontUrl: $documentFrontUrl, documentBackUrl: $documentBackUrl, avatar: $avatar, tyc: $tyc, birthDate: $birthDate, balance: $balance, transactionHistory: $transactionHistory, isKycPhotoEnabled: $isKycPhotoEnabled)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String? userId, String? userName, String? email, String? name, String? lastName, bool? enabled, String? status, String? documentNumber, String? selfieUrl, String? documentFrontUrl, String? documentBackUrl, String? avatar, bool? tyc, DateTime? birthDate, int? balance, List<TransactionHistoryModel>? transactionHistory, bool? isKycPhotoEnabled
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? userName = freezed,Object? email = freezed,Object? name = freezed,Object? lastName = freezed,Object? enabled = freezed,Object? status = freezed,Object? documentNumber = freezed,Object? selfieUrl = freezed,Object? documentFrontUrl = freezed,Object? documentBackUrl = freezed,Object? avatar = freezed,Object? tyc = freezed,Object? birthDate = freezed,Object? balance = freezed,Object? transactionHistory = freezed,Object? isKycPhotoEnabled = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,selfieUrl: freezed == selfieUrl ? _self.selfieUrl : selfieUrl // ignore: cast_nullable_to_non_nullable
as String?,documentFrontUrl: freezed == documentFrontUrl ? _self.documentFrontUrl : documentFrontUrl // ignore: cast_nullable_to_non_nullable
as String?,documentBackUrl: freezed == documentBackUrl ? _self.documentBackUrl : documentBackUrl // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,tyc: freezed == tyc ? _self.tyc : tyc // ignore: cast_nullable_to_non_nullable
as bool?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int?,transactionHistory: freezed == transactionHistory ? _self.transactionHistory : transactionHistory // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryModel>?,isKycPhotoEnabled: freezed == isKycPhotoEnabled ? _self.isKycPhotoEnabled : isKycPhotoEnabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  String? userName,  String? email,  String? name,  String? lastName,  bool? enabled,  String? status,  String? documentNumber,  String? selfieUrl,  String? documentFrontUrl,  String? documentBackUrl,  String? avatar,  bool? tyc,  DateTime? birthDate,  int? balance,  List<TransactionHistoryModel>? transactionHistory,  bool? isKycPhotoEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.userId,_that.userName,_that.email,_that.name,_that.lastName,_that.enabled,_that.status,_that.documentNumber,_that.selfieUrl,_that.documentFrontUrl,_that.documentBackUrl,_that.avatar,_that.tyc,_that.birthDate,_that.balance,_that.transactionHistory,_that.isKycPhotoEnabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  String? userName,  String? email,  String? name,  String? lastName,  bool? enabled,  String? status,  String? documentNumber,  String? selfieUrl,  String? documentFrontUrl,  String? documentBackUrl,  String? avatar,  bool? tyc,  DateTime? birthDate,  int? balance,  List<TransactionHistoryModel>? transactionHistory,  bool? isKycPhotoEnabled)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.userId,_that.userName,_that.email,_that.name,_that.lastName,_that.enabled,_that.status,_that.documentNumber,_that.selfieUrl,_that.documentFrontUrl,_that.documentBackUrl,_that.avatar,_that.tyc,_that.birthDate,_that.balance,_that.transactionHistory,_that.isKycPhotoEnabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  String? userName,  String? email,  String? name,  String? lastName,  bool? enabled,  String? status,  String? documentNumber,  String? selfieUrl,  String? documentFrontUrl,  String? documentBackUrl,  String? avatar,  bool? tyc,  DateTime? birthDate,  int? balance,  List<TransactionHistoryModel>? transactionHistory,  bool? isKycPhotoEnabled)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.userId,_that.userName,_that.email,_that.name,_that.lastName,_that.enabled,_that.status,_that.documentNumber,_that.selfieUrl,_that.documentFrontUrl,_that.documentBackUrl,_that.avatar,_that.tyc,_that.birthDate,_that.balance,_that.transactionHistory,_that.isKycPhotoEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({this.userId, this.userName, this.email, this.name, this.lastName, this.enabled, this.status, this.documentNumber, this.selfieUrl, this.documentFrontUrl, this.documentBackUrl, this.avatar, this.tyc, this.birthDate, this.balance, final  List<TransactionHistoryModel>? transactionHistory, this.isKycPhotoEnabled}): _transactionHistory = transactionHistory;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String? userId;
@override final  String? userName;
@override final  String? email;
@override final  String? name;
@override final  String? lastName;
@override final  bool? enabled;
@override final  String? status;
@override final  String? documentNumber;
@override final  String? selfieUrl;
@override final  String? documentFrontUrl;
@override final  String? documentBackUrl;
@override final  String? avatar;
@override final  bool? tyc;
@override final  DateTime? birthDate;
@override final  int? balance;
 final  List<TransactionHistoryModel>? _transactionHistory;
@override List<TransactionHistoryModel>? get transactionHistory {
  final value = _transactionHistory;
  if (value == null) return null;
  if (_transactionHistory is EqualUnmodifiableListView) return _transactionHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isKycPhotoEnabled;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.selfieUrl, selfieUrl) || other.selfieUrl == selfieUrl)&&(identical(other.documentFrontUrl, documentFrontUrl) || other.documentFrontUrl == documentFrontUrl)&&(identical(other.documentBackUrl, documentBackUrl) || other.documentBackUrl == documentBackUrl)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.tyc, tyc) || other.tyc == tyc)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other._transactionHistory, _transactionHistory)&&(identical(other.isKycPhotoEnabled, isKycPhotoEnabled) || other.isKycPhotoEnabled == isKycPhotoEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,email,name,lastName,enabled,status,documentNumber,selfieUrl,documentFrontUrl,documentBackUrl,avatar,tyc,birthDate,balance,const DeepCollectionEquality().hash(_transactionHistory),isKycPhotoEnabled);

@override
String toString() {
  return 'UserModel(userId: $userId, userName: $userName, email: $email, name: $name, lastName: $lastName, enabled: $enabled, status: $status, documentNumber: $documentNumber, selfieUrl: $selfieUrl, documentFrontUrl: $documentFrontUrl, documentBackUrl: $documentBackUrl, avatar: $avatar, tyc: $tyc, birthDate: $birthDate, balance: $balance, transactionHistory: $transactionHistory, isKycPhotoEnabled: $isKycPhotoEnabled)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String? userId, String? userName, String? email, String? name, String? lastName, bool? enabled, String? status, String? documentNumber, String? selfieUrl, String? documentFrontUrl, String? documentBackUrl, String? avatar, bool? tyc, DateTime? birthDate, int? balance, List<TransactionHistoryModel>? transactionHistory, bool? isKycPhotoEnabled
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? userName = freezed,Object? email = freezed,Object? name = freezed,Object? lastName = freezed,Object? enabled = freezed,Object? status = freezed,Object? documentNumber = freezed,Object? selfieUrl = freezed,Object? documentFrontUrl = freezed,Object? documentBackUrl = freezed,Object? avatar = freezed,Object? tyc = freezed,Object? birthDate = freezed,Object? balance = freezed,Object? transactionHistory = freezed,Object? isKycPhotoEnabled = freezed,}) {
  return _then(_UserModel(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,selfieUrl: freezed == selfieUrl ? _self.selfieUrl : selfieUrl // ignore: cast_nullable_to_non_nullable
as String?,documentFrontUrl: freezed == documentFrontUrl ? _self.documentFrontUrl : documentFrontUrl // ignore: cast_nullable_to_non_nullable
as String?,documentBackUrl: freezed == documentBackUrl ? _self.documentBackUrl : documentBackUrl // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,tyc: freezed == tyc ? _self.tyc : tyc // ignore: cast_nullable_to_non_nullable
as bool?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int?,transactionHistory: freezed == transactionHistory ? _self._transactionHistory : transactionHistory // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryModel>?,isKycPhotoEnabled: freezed == isKycPhotoEnabled ? _self.isKycPhotoEnabled : isKycPhotoEnabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$TransactionHistoryModel {

 String? get type; int? get amount; int? get initAmount; int? get finalAmount; String? get description; String? get source; DateTime? get time;
/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryModelCopyWith<TransactionHistoryModel> get copyWith => _$TransactionHistoryModelCopyWithImpl<TransactionHistoryModel>(this as TransactionHistoryModel, _$identity);

  /// Serializes this TransactionHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryModel&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.initAmount, initAmount) || other.initAmount == initAmount)&&(identical(other.finalAmount, finalAmount) || other.finalAmount == finalAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.source, source) || other.source == source)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,initAmount,finalAmount,description,source,time);

@override
String toString() {
  return 'TransactionHistoryModel(type: $type, amount: $amount, initAmount: $initAmount, finalAmount: $finalAmount, description: $description, source: $source, time: $time)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryModelCopyWith<$Res>  {
  factory $TransactionHistoryModelCopyWith(TransactionHistoryModel value, $Res Function(TransactionHistoryModel) _then) = _$TransactionHistoryModelCopyWithImpl;
@useResult
$Res call({
 String? type, int? amount, int? initAmount, int? finalAmount, String? description, String? source, DateTime? time
});




}
/// @nodoc
class _$TransactionHistoryModelCopyWithImpl<$Res>
    implements $TransactionHistoryModelCopyWith<$Res> {
  _$TransactionHistoryModelCopyWithImpl(this._self, this._then);

  final TransactionHistoryModel _self;
  final $Res Function(TransactionHistoryModel) _then;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? amount = freezed,Object? initAmount = freezed,Object? finalAmount = freezed,Object? description = freezed,Object? source = freezed,Object? time = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,initAmount: freezed == initAmount ? _self.initAmount : initAmount // ignore: cast_nullable_to_non_nullable
as int?,finalAmount: freezed == finalAmount ? _self.finalAmount : finalAmount // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistoryModel].
extension TransactionHistoryModelPatterns on TransactionHistoryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  int? amount,  int? initAmount,  int? finalAmount,  String? description,  String? source,  DateTime? time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that.type,_that.amount,_that.initAmount,_that.finalAmount,_that.description,_that.source,_that.time);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  int? amount,  int? initAmount,  int? finalAmount,  String? description,  String? source,  DateTime? time)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryModel():
return $default(_that.type,_that.amount,_that.initAmount,_that.finalAmount,_that.description,_that.source,_that.time);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  int? amount,  int? initAmount,  int? finalAmount,  String? description,  String? source,  DateTime? time)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that.type,_that.amount,_that.initAmount,_that.finalAmount,_that.description,_that.source,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistoryModel implements TransactionHistoryModel {
  const _TransactionHistoryModel({this.type, this.amount, this.initAmount, this.finalAmount, this.description, this.source, this.time});
  factory _TransactionHistoryModel.fromJson(Map<String, dynamic> json) => _$TransactionHistoryModelFromJson(json);

@override final  String? type;
@override final  int? amount;
@override final  int? initAmount;
@override final  int? finalAmount;
@override final  String? description;
@override final  String? source;
@override final  DateTime? time;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryModelCopyWith<_TransactionHistoryModel> get copyWith => __$TransactionHistoryModelCopyWithImpl<_TransactionHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryModel&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.initAmount, initAmount) || other.initAmount == initAmount)&&(identical(other.finalAmount, finalAmount) || other.finalAmount == finalAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.source, source) || other.source == source)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,initAmount,finalAmount,description,source,time);

@override
String toString() {
  return 'TransactionHistoryModel(type: $type, amount: $amount, initAmount: $initAmount, finalAmount: $finalAmount, description: $description, source: $source, time: $time)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryModelCopyWith<$Res> implements $TransactionHistoryModelCopyWith<$Res> {
  factory _$TransactionHistoryModelCopyWith(_TransactionHistoryModel value, $Res Function(_TransactionHistoryModel) _then) = __$TransactionHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? type, int? amount, int? initAmount, int? finalAmount, String? description, String? source, DateTime? time
});




}
/// @nodoc
class __$TransactionHistoryModelCopyWithImpl<$Res>
    implements _$TransactionHistoryModelCopyWith<$Res> {
  __$TransactionHistoryModelCopyWithImpl(this._self, this._then);

  final _TransactionHistoryModel _self;
  final $Res Function(_TransactionHistoryModel) _then;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? amount = freezed,Object? initAmount = freezed,Object? finalAmount = freezed,Object? description = freezed,Object? source = freezed,Object? time = freezed,}) {
  return _then(_TransactionHistoryModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,initAmount: freezed == initAmount ? _self.initAmount : initAmount // ignore: cast_nullable_to_non_nullable
as int?,finalAmount: freezed == finalAmount ? _self.finalAmount : finalAmount // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
