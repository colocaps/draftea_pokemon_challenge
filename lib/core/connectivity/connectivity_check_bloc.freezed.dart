// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityCheckEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityCheckEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityCheckEvent()';
}


}

/// @nodoc
class $ConnectivityCheckEventCopyWith<$Res>  {
$ConnectivityCheckEventCopyWith(ConnectivityCheckEvent _, $Res Function(ConnectivityCheckEvent) __);
}


/// Adds pattern-matching-related methods to [ConnectivityCheckEvent].
extension ConnectivityCheckEventPatterns on ConnectivityCheckEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateConnectivity value)?  updateConnectivity,TResult Function( _CheckConnectivity value)?  checkConnectivity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateConnectivity() when updateConnectivity != null:
return updateConnectivity(_that);case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateConnectivity value)  updateConnectivity,required TResult Function( _CheckConnectivity value)  checkConnectivity,}){
final _that = this;
switch (_that) {
case _UpdateConnectivity():
return updateConnectivity(_that);case _CheckConnectivity():
return checkConnectivity(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateConnectivity value)?  updateConnectivity,TResult? Function( _CheckConnectivity value)?  checkConnectivity,}){
final _that = this;
switch (_that) {
case _UpdateConnectivity() when updateConnectivity != null:
return updateConnectivity(_that);case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<ConnectivityResult> connectivityResult)?  updateConnectivity,TResult Function()?  checkConnectivity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateConnectivity() when updateConnectivity != null:
return updateConnectivity(_that.connectivityResult);case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<ConnectivityResult> connectivityResult)  updateConnectivity,required TResult Function()  checkConnectivity,}) {final _that = this;
switch (_that) {
case _UpdateConnectivity():
return updateConnectivity(_that.connectivityResult);case _CheckConnectivity():
return checkConnectivity();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<ConnectivityResult> connectivityResult)?  updateConnectivity,TResult? Function()?  checkConnectivity,}) {final _that = this;
switch (_that) {
case _UpdateConnectivity() when updateConnectivity != null:
return updateConnectivity(_that.connectivityResult);case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity();case _:
  return null;

}
}

}

/// @nodoc


class _UpdateConnectivity implements ConnectivityCheckEvent {
  const _UpdateConnectivity(final  List<ConnectivityResult> connectivityResult): _connectivityResult = connectivityResult;
  

 final  List<ConnectivityResult> _connectivityResult;
 List<ConnectivityResult> get connectivityResult {
  if (_connectivityResult is EqualUnmodifiableListView) return _connectivityResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connectivityResult);
}


/// Create a copy of ConnectivityCheckEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateConnectivityCopyWith<_UpdateConnectivity> get copyWith => __$UpdateConnectivityCopyWithImpl<_UpdateConnectivity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateConnectivity&&const DeepCollectionEquality().equals(other._connectivityResult, _connectivityResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_connectivityResult));

@override
String toString() {
  return 'ConnectivityCheckEvent.updateConnectivity(connectivityResult: $connectivityResult)';
}


}

/// @nodoc
abstract mixin class _$UpdateConnectivityCopyWith<$Res> implements $ConnectivityCheckEventCopyWith<$Res> {
  factory _$UpdateConnectivityCopyWith(_UpdateConnectivity value, $Res Function(_UpdateConnectivity) _then) = __$UpdateConnectivityCopyWithImpl;
@useResult
$Res call({
 List<ConnectivityResult> connectivityResult
});




}
/// @nodoc
class __$UpdateConnectivityCopyWithImpl<$Res>
    implements _$UpdateConnectivityCopyWith<$Res> {
  __$UpdateConnectivityCopyWithImpl(this._self, this._then);

  final _UpdateConnectivity _self;
  final $Res Function(_UpdateConnectivity) _then;

/// Create a copy of ConnectivityCheckEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? connectivityResult = null,}) {
  return _then(_UpdateConnectivity(
null == connectivityResult ? _self._connectivityResult : connectivityResult // ignore: cast_nullable_to_non_nullable
as List<ConnectivityResult>,
  ));
}


}

/// @nodoc


class _CheckConnectivity implements ConnectivityCheckEvent {
  const _CheckConnectivity();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckConnectivity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityCheckEvent.checkConnectivity()';
}


}




/// @nodoc
mixin _$ConnectivityCheckState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityCheckState()';
}


}

/// @nodoc
class $ConnectivityCheckStateCopyWith<$Res>  {
$ConnectivityCheckStateCopyWith(ConnectivityCheckState _, $Res Function(ConnectivityCheckState) __);
}


/// Adds pattern-matching-related methods to [ConnectivityCheckState].
extension ConnectivityCheckStatePatterns on ConnectivityCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingConnectivityCheckState value)?  loadingConnectivityCheckState,TResult Function( ConnectedConnectivityCheckState value)?  connectedState,TResult Function( NotConnectedConnectivityCheckState value)?  notConnectedState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingConnectivityCheckState() when loadingConnectivityCheckState != null:
return loadingConnectivityCheckState(_that);case ConnectedConnectivityCheckState() when connectedState != null:
return connectedState(_that);case NotConnectedConnectivityCheckState() when notConnectedState != null:
return notConnectedState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingConnectivityCheckState value)  loadingConnectivityCheckState,required TResult Function( ConnectedConnectivityCheckState value)  connectedState,required TResult Function( NotConnectedConnectivityCheckState value)  notConnectedState,}){
final _that = this;
switch (_that) {
case LoadingConnectivityCheckState():
return loadingConnectivityCheckState(_that);case ConnectedConnectivityCheckState():
return connectedState(_that);case NotConnectedConnectivityCheckState():
return notConnectedState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingConnectivityCheckState value)?  loadingConnectivityCheckState,TResult? Function( ConnectedConnectivityCheckState value)?  connectedState,TResult? Function( NotConnectedConnectivityCheckState value)?  notConnectedState,}){
final _that = this;
switch (_that) {
case LoadingConnectivityCheckState() when loadingConnectivityCheckState != null:
return loadingConnectivityCheckState(_that);case ConnectedConnectivityCheckState() when connectedState != null:
return connectedState(_that);case NotConnectedConnectivityCheckState() when notConnectedState != null:
return notConnectedState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingConnectivityCheckState,TResult Function()?  connectedState,TResult Function()?  notConnectedState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingConnectivityCheckState() when loadingConnectivityCheckState != null:
return loadingConnectivityCheckState();case ConnectedConnectivityCheckState() when connectedState != null:
return connectedState();case NotConnectedConnectivityCheckState() when notConnectedState != null:
return notConnectedState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingConnectivityCheckState,required TResult Function()  connectedState,required TResult Function()  notConnectedState,}) {final _that = this;
switch (_that) {
case LoadingConnectivityCheckState():
return loadingConnectivityCheckState();case ConnectedConnectivityCheckState():
return connectedState();case NotConnectedConnectivityCheckState():
return notConnectedState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingConnectivityCheckState,TResult? Function()?  connectedState,TResult? Function()?  notConnectedState,}) {final _that = this;
switch (_that) {
case LoadingConnectivityCheckState() when loadingConnectivityCheckState != null:
return loadingConnectivityCheckState();case ConnectedConnectivityCheckState() when connectedState != null:
return connectedState();case NotConnectedConnectivityCheckState() when notConnectedState != null:
return notConnectedState();case _:
  return null;

}
}

}

/// @nodoc


class LoadingConnectivityCheckState implements ConnectivityCheckState {
  const LoadingConnectivityCheckState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingConnectivityCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityCheckState.loadingConnectivityCheckState()';
}


}




/// @nodoc


class ConnectedConnectivityCheckState implements ConnectivityCheckState {
  const ConnectedConnectivityCheckState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedConnectivityCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityCheckState.connectedState()';
}


}




/// @nodoc


class NotConnectedConnectivityCheckState implements ConnectivityCheckState {
  const NotConnectedConnectivityCheckState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotConnectedConnectivityCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityCheckState.notConnectedState()';
}


}




// dart format on
