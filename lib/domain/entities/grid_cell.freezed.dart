// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GridCell {

@HiveField(0) int get x;@HiveField(1) int get y;@HiveField(2) int get value;
/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GridCellCopyWith<GridCell> get copyWith => _$GridCellCopyWithImpl<GridCell>(this as GridCell, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridCell&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,x,y,value);

@override
String toString() {
  return 'GridCell(x: $x, y: $y, value: $value)';
}


}

/// @nodoc
abstract mixin class $GridCellCopyWith<$Res>  {
  factory $GridCellCopyWith(GridCell value, $Res Function(GridCell) _then) = _$GridCellCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int x,@HiveField(1) int y,@HiveField(2) int value
});




}
/// @nodoc
class _$GridCellCopyWithImpl<$Res>
    implements $GridCellCopyWith<$Res> {
  _$GridCellCopyWithImpl(this._self, this._then);

  final GridCell _self;
  final $Res Function(GridCell) _then;

/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? value = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GridCell].
extension GridCellPatterns on GridCell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GridCell value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GridCell() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GridCell value)  $default,){
final _that = this;
switch (_that) {
case _GridCell():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GridCell value)?  $default,){
final _that = this;
switch (_that) {
case _GridCell() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  int x, @HiveField(1)  int y, @HiveField(2)  int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GridCell() when $default != null:
return $default(_that.x,_that.y,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  int x, @HiveField(1)  int y, @HiveField(2)  int value)  $default,) {final _that = this;
switch (_that) {
case _GridCell():
return $default(_that.x,_that.y,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  int x, @HiveField(1)  int y, @HiveField(2)  int value)?  $default,) {final _that = this;
switch (_that) {
case _GridCell() when $default != null:
return $default(_that.x,_that.y,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _GridCell implements GridCell {
  const _GridCell({@HiveField(0) required this.x, @HiveField(1) required this.y, @HiveField(2) this.value = 0});
  

@override@HiveField(0) final  int x;
@override@HiveField(1) final  int y;
@override@JsonKey()@HiveField(2) final  int value;

/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GridCellCopyWith<_GridCell> get copyWith => __$GridCellCopyWithImpl<_GridCell>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GridCell&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,x,y,value);

@override
String toString() {
  return 'GridCell(x: $x, y: $y, value: $value)';
}


}

/// @nodoc
abstract mixin class _$GridCellCopyWith<$Res> implements $GridCellCopyWith<$Res> {
  factory _$GridCellCopyWith(_GridCell value, $Res Function(_GridCell) _then) = __$GridCellCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int x,@HiveField(1) int y,@HiveField(2) int value
});




}
/// @nodoc
class __$GridCellCopyWithImpl<$Res>
    implements _$GridCellCopyWith<$Res> {
  __$GridCellCopyWithImpl(this._self, this._then);

  final _GridCell _self;
  final $Res Function(_GridCell) _then;

/// Create a copy of GridCell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? value = null,}) {
  return _then(_GridCell(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
