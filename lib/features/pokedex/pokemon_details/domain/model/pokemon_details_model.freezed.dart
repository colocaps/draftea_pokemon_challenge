// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonDetailsModel {

 int get id; String get name; String get imageUrl; int get height; int get weight; List<String> get types; List<PokemonStatModel> get stats;
/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsModelCopyWith<PokemonDetailsModel> get copyWith => _$PokemonDetailsModelCopyWithImpl<PokemonDetailsModel>(this as PokemonDetailsModel, _$identity);

  /// Serializes this PokemonDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.stats, stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,height,weight,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(stats));

@override
String toString() {
  return 'PokemonDetailsModel(id: $id, name: $name, imageUrl: $imageUrl, height: $height, weight: $weight, types: $types, stats: $stats)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsModelCopyWith<$Res>  {
  factory $PokemonDetailsModelCopyWith(PokemonDetailsModel value, $Res Function(PokemonDetailsModel) _then) = _$PokemonDetailsModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String imageUrl, int height, int weight, List<String> types, List<PokemonStatModel> stats
});




}
/// @nodoc
class _$PokemonDetailsModelCopyWithImpl<$Res>
    implements $PokemonDetailsModelCopyWith<$Res> {
  _$PokemonDetailsModelCopyWithImpl(this._self, this._then);

  final PokemonDetailsModel _self;
  final $Res Function(PokemonDetailsModel) _then;

/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? height = null,Object? weight = null,Object? types = null,Object? stats = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStatModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonDetailsModel].
extension PokemonDetailsModelPatterns on PokemonDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String imageUrl,  int height,  int weight,  List<String> types,  List<PokemonStatModel> stats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.height,_that.weight,_that.types,_that.stats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String imageUrl,  int height,  int weight,  List<String> types,  List<PokemonStatModel> stats)  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailsModel():
return $default(_that.id,_that.name,_that.imageUrl,_that.height,_that.weight,_that.types,_that.stats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String imageUrl,  int height,  int weight,  List<String> types,  List<PokemonStatModel> stats)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.height,_that.weight,_that.types,_that.stats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonDetailsModel implements PokemonDetailsModel {
  const _PokemonDetailsModel({required this.id, required this.name, required this.imageUrl, required this.height, required this.weight, final  List<String> types = const <String>[], final  List<PokemonStatModel> stats = const <PokemonStatModel>[]}): _types = types,_stats = stats;
  factory _PokemonDetailsModel.fromJson(Map<String, dynamic> json) => _$PokemonDetailsModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String imageUrl;
@override final  int height;
@override final  int weight;
 final  List<String> _types;
@override@JsonKey() List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<PokemonStatModel> _stats;
@override@JsonKey() List<PokemonStatModel> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}


/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailsModelCopyWith<_PokemonDetailsModel> get copyWith => __$PokemonDetailsModelCopyWithImpl<_PokemonDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._stats, _stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,height,weight,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_stats));

@override
String toString() {
  return 'PokemonDetailsModel(id: $id, name: $name, imageUrl: $imageUrl, height: $height, weight: $weight, types: $types, stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailsModelCopyWith<$Res> implements $PokemonDetailsModelCopyWith<$Res> {
  factory _$PokemonDetailsModelCopyWith(_PokemonDetailsModel value, $Res Function(_PokemonDetailsModel) _then) = __$PokemonDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String imageUrl, int height, int weight, List<String> types, List<PokemonStatModel> stats
});




}
/// @nodoc
class __$PokemonDetailsModelCopyWithImpl<$Res>
    implements _$PokemonDetailsModelCopyWith<$Res> {
  __$PokemonDetailsModelCopyWithImpl(this._self, this._then);

  final _PokemonDetailsModel _self;
  final $Res Function(_PokemonDetailsModel) _then;

/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? height = null,Object? weight = null,Object? types = null,Object? stats = null,}) {
  return _then(_PokemonDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStatModel>,
  ));
}


}


/// @nodoc
mixin _$PokemonStatModel {

 String get name; int get baseStat;
/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonStatModelCopyWith<PokemonStatModel> get copyWith => _$PokemonStatModelCopyWithImpl<PokemonStatModel>(this as PokemonStatModel, _$identity);

  /// Serializes this PokemonStatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonStatModel&&(identical(other.name, name) || other.name == name)&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,baseStat);

@override
String toString() {
  return 'PokemonStatModel(name: $name, baseStat: $baseStat)';
}


}

/// @nodoc
abstract mixin class $PokemonStatModelCopyWith<$Res>  {
  factory $PokemonStatModelCopyWith(PokemonStatModel value, $Res Function(PokemonStatModel) _then) = _$PokemonStatModelCopyWithImpl;
@useResult
$Res call({
 String name, int baseStat
});




}
/// @nodoc
class _$PokemonStatModelCopyWithImpl<$Res>
    implements $PokemonStatModelCopyWith<$Res> {
  _$PokemonStatModelCopyWithImpl(this._self, this._then);

  final PokemonStatModel _self;
  final $Res Function(PokemonStatModel) _then;

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? baseStat = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonStatModel].
extension PokemonStatModelPatterns on PokemonStatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonStatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonStatModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonStatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonStatModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int baseStat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
return $default(_that.name,_that.baseStat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int baseStat)  $default,) {final _that = this;
switch (_that) {
case _PokemonStatModel():
return $default(_that.name,_that.baseStat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int baseStat)?  $default,) {final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
return $default(_that.name,_that.baseStat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonStatModel implements PokemonStatModel {
  const _PokemonStatModel({required this.name, required this.baseStat});
  factory _PokemonStatModel.fromJson(Map<String, dynamic> json) => _$PokemonStatModelFromJson(json);

@override final  String name;
@override final  int baseStat;

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonStatModelCopyWith<_PokemonStatModel> get copyWith => __$PokemonStatModelCopyWithImpl<_PokemonStatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonStatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonStatModel&&(identical(other.name, name) || other.name == name)&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,baseStat);

@override
String toString() {
  return 'PokemonStatModel(name: $name, baseStat: $baseStat)';
}


}

/// @nodoc
abstract mixin class _$PokemonStatModelCopyWith<$Res> implements $PokemonStatModelCopyWith<$Res> {
  factory _$PokemonStatModelCopyWith(_PokemonStatModel value, $Res Function(_PokemonStatModel) _then) = __$PokemonStatModelCopyWithImpl;
@override @useResult
$Res call({
 String name, int baseStat
});




}
/// @nodoc
class __$PokemonStatModelCopyWithImpl<$Res>
    implements _$PokemonStatModelCopyWith<$Res> {
  __$PokemonStatModelCopyWithImpl(this._self, this._then);

  final _PokemonStatModel _self;
  final $Res Function(_PokemonStatModel) _then;

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? baseStat = null,}) {
  return _then(_PokemonStatModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
