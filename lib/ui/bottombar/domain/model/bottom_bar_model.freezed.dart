// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_bar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BottomBarModel {

 int get currentPageIndex; bool? get isVisible;
/// Create a copy of BottomBarModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomBarModelCopyWith<BottomBarModel> get copyWith => _$BottomBarModelCopyWithImpl<BottomBarModel>(this as BottomBarModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomBarModel&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,currentPageIndex,isVisible);

@override
String toString() {
  return 'BottomBarModel(currentPageIndex: $currentPageIndex, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $BottomBarModelCopyWith<$Res>  {
  factory $BottomBarModelCopyWith(BottomBarModel value, $Res Function(BottomBarModel) _then) = _$BottomBarModelCopyWithImpl;
@useResult
$Res call({
 int currentPageIndex, bool? isVisible
});




}
/// @nodoc
class _$BottomBarModelCopyWithImpl<$Res>
    implements $BottomBarModelCopyWith<$Res> {
  _$BottomBarModelCopyWithImpl(this._self, this._then);

  final BottomBarModel _self;
  final $Res Function(BottomBarModel) _then;

/// Create a copy of BottomBarModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPageIndex = null,Object? isVisible = freezed,}) {
  return _then(_self.copyWith(
currentPageIndex: null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,isVisible: freezed == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BottomBarModel].
extension BottomBarModelPatterns on BottomBarModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BottomBarModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BottomBarModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BottomBarModel value)  $default,){
final _that = this;
switch (_that) {
case _BottomBarModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BottomBarModel value)?  $default,){
final _that = this;
switch (_that) {
case _BottomBarModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPageIndex,  bool? isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BottomBarModel() when $default != null:
return $default(_that.currentPageIndex,_that.isVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPageIndex,  bool? isVisible)  $default,) {final _that = this;
switch (_that) {
case _BottomBarModel():
return $default(_that.currentPageIndex,_that.isVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPageIndex,  bool? isVisible)?  $default,) {final _that = this;
switch (_that) {
case _BottomBarModel() when $default != null:
return $default(_that.currentPageIndex,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc


class _BottomBarModel implements BottomBarModel {
   _BottomBarModel({required this.currentPageIndex, this.isVisible = true});
  

@override final  int currentPageIndex;
@override@JsonKey() final  bool? isVisible;

/// Create a copy of BottomBarModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BottomBarModelCopyWith<_BottomBarModel> get copyWith => __$BottomBarModelCopyWithImpl<_BottomBarModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BottomBarModel&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,currentPageIndex,isVisible);

@override
String toString() {
  return 'BottomBarModel(currentPageIndex: $currentPageIndex, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$BottomBarModelCopyWith<$Res> implements $BottomBarModelCopyWith<$Res> {
  factory _$BottomBarModelCopyWith(_BottomBarModel value, $Res Function(_BottomBarModel) _then) = __$BottomBarModelCopyWithImpl;
@override @useResult
$Res call({
 int currentPageIndex, bool? isVisible
});




}
/// @nodoc
class __$BottomBarModelCopyWithImpl<$Res>
    implements _$BottomBarModelCopyWith<$Res> {
  __$BottomBarModelCopyWithImpl(this._self, this._then);

  final _BottomBarModel _self;
  final $Res Function(_BottomBarModel) _then;

/// Create a copy of BottomBarModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPageIndex = null,Object? isVisible = freezed,}) {
  return _then(_BottomBarModel(
currentPageIndex: null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,isVisible: freezed == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
