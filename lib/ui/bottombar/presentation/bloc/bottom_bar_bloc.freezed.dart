// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BottomBarState {

 BottomBarStatus get status; BottomBarModel? get bottomBarModel; DateTime? get lastUpdatedAt; UserModel? get userModel;
/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomBarStateCopyWith<BottomBarState> get copyWith => _$BottomBarStateCopyWithImpl<BottomBarState>(this as BottomBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomBarState&&(identical(other.status, status) || other.status == status)&&(identical(other.bottomBarModel, bottomBarModel) || other.bottomBarModel == bottomBarModel)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,status,bottomBarModel,lastUpdatedAt,userModel);

@override
String toString() {
  return 'BottomBarState(status: $status, bottomBarModel: $bottomBarModel, lastUpdatedAt: $lastUpdatedAt, userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class $BottomBarStateCopyWith<$Res>  {
  factory $BottomBarStateCopyWith(BottomBarState value, $Res Function(BottomBarState) _then) = _$BottomBarStateCopyWithImpl;
@useResult
$Res call({
 BottomBarStatus status, BottomBarModel? bottomBarModel, DateTime? lastUpdatedAt, UserModel? userModel
});


$BottomBarModelCopyWith<$Res>? get bottomBarModel;$UserModelCopyWith<$Res>? get userModel;

}
/// @nodoc
class _$BottomBarStateCopyWithImpl<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  _$BottomBarStateCopyWithImpl(this._self, this._then);

  final BottomBarState _self;
  final $Res Function(BottomBarState) _then;

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bottomBarModel = freezed,Object? lastUpdatedAt = freezed,Object? userModel = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BottomBarStatus,bottomBarModel: freezed == bottomBarModel ? _self.bottomBarModel : bottomBarModel // ignore: cast_nullable_to_non_nullable
as BottomBarModel?,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userModel: freezed == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BottomBarModelCopyWith<$Res>? get bottomBarModel {
    if (_self.bottomBarModel == null) {
    return null;
  }

  return $BottomBarModelCopyWith<$Res>(_self.bottomBarModel!, (value) {
    return _then(_self.copyWith(bottomBarModel: value));
  });
}/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get userModel {
    if (_self.userModel == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.userModel!, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [BottomBarState].
extension BottomBarStatePatterns on BottomBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BottomBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BottomBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BottomBarState value)  $default,){
final _that = this;
switch (_that) {
case _BottomBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BottomBarState value)?  $default,){
final _that = this;
switch (_that) {
case _BottomBarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BottomBarStatus status,  BottomBarModel? bottomBarModel,  DateTime? lastUpdatedAt,  UserModel? userModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BottomBarState() when $default != null:
return $default(_that.status,_that.bottomBarModel,_that.lastUpdatedAt,_that.userModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BottomBarStatus status,  BottomBarModel? bottomBarModel,  DateTime? lastUpdatedAt,  UserModel? userModel)  $default,) {final _that = this;
switch (_that) {
case _BottomBarState():
return $default(_that.status,_that.bottomBarModel,_that.lastUpdatedAt,_that.userModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BottomBarStatus status,  BottomBarModel? bottomBarModel,  DateTime? lastUpdatedAt,  UserModel? userModel)?  $default,) {final _that = this;
switch (_that) {
case _BottomBarState() when $default != null:
return $default(_that.status,_that.bottomBarModel,_that.lastUpdatedAt,_that.userModel);case _:
  return null;

}
}

}

/// @nodoc


class _BottomBarState implements BottomBarState {
  const _BottomBarState({this.status = BottomBarStatus.initial, this.bottomBarModel, this.lastUpdatedAt, this.userModel});
  

@override@JsonKey() final  BottomBarStatus status;
@override final  BottomBarModel? bottomBarModel;
@override final  DateTime? lastUpdatedAt;
@override final  UserModel? userModel;

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BottomBarStateCopyWith<_BottomBarState> get copyWith => __$BottomBarStateCopyWithImpl<_BottomBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BottomBarState&&(identical(other.status, status) || other.status == status)&&(identical(other.bottomBarModel, bottomBarModel) || other.bottomBarModel == bottomBarModel)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,status,bottomBarModel,lastUpdatedAt,userModel);

@override
String toString() {
  return 'BottomBarState(status: $status, bottomBarModel: $bottomBarModel, lastUpdatedAt: $lastUpdatedAt, userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class _$BottomBarStateCopyWith<$Res> implements $BottomBarStateCopyWith<$Res> {
  factory _$BottomBarStateCopyWith(_BottomBarState value, $Res Function(_BottomBarState) _then) = __$BottomBarStateCopyWithImpl;
@override @useResult
$Res call({
 BottomBarStatus status, BottomBarModel? bottomBarModel, DateTime? lastUpdatedAt, UserModel? userModel
});


@override $BottomBarModelCopyWith<$Res>? get bottomBarModel;@override $UserModelCopyWith<$Res>? get userModel;

}
/// @nodoc
class __$BottomBarStateCopyWithImpl<$Res>
    implements _$BottomBarStateCopyWith<$Res> {
  __$BottomBarStateCopyWithImpl(this._self, this._then);

  final _BottomBarState _self;
  final $Res Function(_BottomBarState) _then;

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bottomBarModel = freezed,Object? lastUpdatedAt = freezed,Object? userModel = freezed,}) {
  return _then(_BottomBarState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BottomBarStatus,bottomBarModel: freezed == bottomBarModel ? _self.bottomBarModel : bottomBarModel // ignore: cast_nullable_to_non_nullable
as BottomBarModel?,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userModel: freezed == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BottomBarModelCopyWith<$Res>? get bottomBarModel {
    if (_self.bottomBarModel == null) {
    return null;
  }

  return $BottomBarModelCopyWith<$Res>(_self.bottomBarModel!, (value) {
    return _then(_self.copyWith(bottomBarModel: value));
  });
}/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get userModel {
    if (_self.userModel == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.userModel!, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}

// dart format on
