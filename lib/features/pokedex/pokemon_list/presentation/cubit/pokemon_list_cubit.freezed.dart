// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonListState {

 PokemonListModel? get pokemonList; String? get errorMessage; DateTime? get dateTime; PokemonListStatus? get status;
/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListStateCopyWith<PokemonListState> get copyWith => _$PokemonListStateCopyWithImpl<PokemonListState>(this as PokemonListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListState&&(identical(other.pokemonList, pokemonList) || other.pokemonList == pokemonList)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,pokemonList,errorMessage,dateTime,status);

@override
String toString() {
  return 'PokemonListState(pokemonList: $pokemonList, errorMessage: $errorMessage, dateTime: $dateTime, status: $status)';
}


}

/// @nodoc
abstract mixin class $PokemonListStateCopyWith<$Res>  {
  factory $PokemonListStateCopyWith(PokemonListState value, $Res Function(PokemonListState) _then) = _$PokemonListStateCopyWithImpl;
@useResult
$Res call({
 PokemonListModel? pokemonList, String? errorMessage, DateTime? dateTime, PokemonListStatus? status
});


$PokemonListModelCopyWith<$Res>? get pokemonList;

}
/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._self, this._then);

  final PokemonListState _self;
  final $Res Function(PokemonListState) _then;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pokemonList = freezed,Object? errorMessage = freezed,Object? dateTime = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
pokemonList: freezed == pokemonList ? _self.pokemonList : pokemonList // ignore: cast_nullable_to_non_nullable
as PokemonListModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonListStatus?,
  ));
}
/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonListModelCopyWith<$Res>? get pokemonList {
    if (_self.pokemonList == null) {
    return null;
  }

  return $PokemonListModelCopyWith<$Res>(_self.pokemonList!, (value) {
    return _then(_self.copyWith(pokemonList: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonListState].
extension PokemonListStatePatterns on PokemonListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PokemonListModel? pokemonList,  String? errorMessage,  DateTime? dateTime,  PokemonListStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListState() when $default != null:
return $default(_that.pokemonList,_that.errorMessage,_that.dateTime,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PokemonListModel? pokemonList,  String? errorMessage,  DateTime? dateTime,  PokemonListStatus? status)  $default,) {final _that = this;
switch (_that) {
case _PokemonListState():
return $default(_that.pokemonList,_that.errorMessage,_that.dateTime,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PokemonListModel? pokemonList,  String? errorMessage,  DateTime? dateTime,  PokemonListStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListState() when $default != null:
return $default(_that.pokemonList,_that.errorMessage,_that.dateTime,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonListState implements PokemonListState {
  const _PokemonListState({this.pokemonList, this.errorMessage, this.dateTime, this.status});
  

@override final  PokemonListModel? pokemonList;
@override final  String? errorMessage;
@override final  DateTime? dateTime;
@override final  PokemonListStatus? status;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListStateCopyWith<_PokemonListState> get copyWith => __$PokemonListStateCopyWithImpl<_PokemonListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListState&&(identical(other.pokemonList, pokemonList) || other.pokemonList == pokemonList)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,pokemonList,errorMessage,dateTime,status);

@override
String toString() {
  return 'PokemonListState(pokemonList: $pokemonList, errorMessage: $errorMessage, dateTime: $dateTime, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PokemonListStateCopyWith<$Res> implements $PokemonListStateCopyWith<$Res> {
  factory _$PokemonListStateCopyWith(_PokemonListState value, $Res Function(_PokemonListState) _then) = __$PokemonListStateCopyWithImpl;
@override @useResult
$Res call({
 PokemonListModel? pokemonList, String? errorMessage, DateTime? dateTime, PokemonListStatus? status
});


@override $PokemonListModelCopyWith<$Res>? get pokemonList;

}
/// @nodoc
class __$PokemonListStateCopyWithImpl<$Res>
    implements _$PokemonListStateCopyWith<$Res> {
  __$PokemonListStateCopyWithImpl(this._self, this._then);

  final _PokemonListState _self;
  final $Res Function(_PokemonListState) _then;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pokemonList = freezed,Object? errorMessage = freezed,Object? dateTime = freezed,Object? status = freezed,}) {
  return _then(_PokemonListState(
pokemonList: freezed == pokemonList ? _self.pokemonList : pokemonList // ignore: cast_nullable_to_non_nullable
as PokemonListModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonListStatus?,
  ));
}

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonListModelCopyWith<$Res>? get pokemonList {
    if (_self.pokemonList == null) {
    return null;
  }

  return $PokemonListModelCopyWith<$Res>(_self.pokemonList!, (value) {
    return _then(_self.copyWith(pokemonList: value));
  });
}
}

// dart format on
