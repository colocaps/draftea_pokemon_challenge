// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonDetailsState {

 PokemonDetailsModel? get details; String? get errorMessage; PokemonDetailsStatus? get status;
/// Create a copy of PokemonDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsStateCopyWith<PokemonDetailsState> get copyWith => _$PokemonDetailsStateCopyWithImpl<PokemonDetailsState>(this as PokemonDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailsState&&(identical(other.details, details) || other.details == details)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,details,errorMessage,status);

@override
String toString() {
  return 'PokemonDetailsState(details: $details, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsStateCopyWith<$Res>  {
  factory $PokemonDetailsStateCopyWith(PokemonDetailsState value, $Res Function(PokemonDetailsState) _then) = _$PokemonDetailsStateCopyWithImpl;
@useResult
$Res call({
 PokemonDetailsModel? details, String? errorMessage, PokemonDetailsStatus? status
});


$PokemonDetailsModelCopyWith<$Res>? get details;

}
/// @nodoc
class _$PokemonDetailsStateCopyWithImpl<$Res>
    implements $PokemonDetailsStateCopyWith<$Res> {
  _$PokemonDetailsStateCopyWithImpl(this._self, this._then);

  final PokemonDetailsState _self;
  final $Res Function(PokemonDetailsState) _then;

/// Create a copy of PokemonDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? details = freezed,Object? errorMessage = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as PokemonDetailsModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonDetailsStatus?,
  ));
}
/// Create a copy of PokemonDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonDetailsModelCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $PokemonDetailsModelCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonDetailsState].
extension PokemonDetailsStatePatterns on PokemonDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PokemonDetailsModel? details,  String? errorMessage,  PokemonDetailsStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDetailsState() when $default != null:
return $default(_that.details,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PokemonDetailsModel? details,  String? errorMessage,  PokemonDetailsStatus? status)  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailsState():
return $default(_that.details,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PokemonDetailsModel? details,  String? errorMessage,  PokemonDetailsStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailsState() when $default != null:
return $default(_that.details,_that.errorMessage,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonDetailsState implements PokemonDetailsState {
  const _PokemonDetailsState({this.details, this.errorMessage, this.status});
  

@override final  PokemonDetailsModel? details;
@override final  String? errorMessage;
@override final  PokemonDetailsStatus? status;

/// Create a copy of PokemonDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailsStateCopyWith<_PokemonDetailsState> get copyWith => __$PokemonDetailsStateCopyWithImpl<_PokemonDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailsState&&(identical(other.details, details) || other.details == details)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,details,errorMessage,status);

@override
String toString() {
  return 'PokemonDetailsState(details: $details, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailsStateCopyWith<$Res> implements $PokemonDetailsStateCopyWith<$Res> {
  factory _$PokemonDetailsStateCopyWith(_PokemonDetailsState value, $Res Function(_PokemonDetailsState) _then) = __$PokemonDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 PokemonDetailsModel? details, String? errorMessage, PokemonDetailsStatus? status
});


@override $PokemonDetailsModelCopyWith<$Res>? get details;

}
/// @nodoc
class __$PokemonDetailsStateCopyWithImpl<$Res>
    implements _$PokemonDetailsStateCopyWith<$Res> {
  __$PokemonDetailsStateCopyWithImpl(this._self, this._then);

  final _PokemonDetailsState _self;
  final $Res Function(_PokemonDetailsState) _then;

/// Create a copy of PokemonDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? details = freezed,Object? errorMessage = freezed,Object? status = freezed,}) {
  return _then(_PokemonDetailsState(
details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as PokemonDetailsModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonDetailsStatus?,
  ));
}

/// Create a copy of PokemonDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonDetailsModelCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $PokemonDetailsModelCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
