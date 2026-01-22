// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_update_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GridUpdateResult {

 Map<String, GridCell> get updatedGrid; List<GridCell> get fibonacciCells; List<GridCell> get crossCells;
/// Create a copy of GridUpdateResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GridUpdateResultCopyWith<GridUpdateResult> get copyWith => _$GridUpdateResultCopyWithImpl<GridUpdateResult>(this as GridUpdateResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridUpdateResult&&const DeepCollectionEquality().equals(other.updatedGrid, updatedGrid)&&const DeepCollectionEquality().equals(other.fibonacciCells, fibonacciCells)&&const DeepCollectionEquality().equals(other.crossCells, crossCells));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(updatedGrid),const DeepCollectionEquality().hash(fibonacciCells),const DeepCollectionEquality().hash(crossCells));

@override
String toString() {
  return 'GridUpdateResult(updatedGrid: $updatedGrid, fibonacciCells: $fibonacciCells, crossCells: $crossCells)';
}


}

/// @nodoc
abstract mixin class $GridUpdateResultCopyWith<$Res>  {
  factory $GridUpdateResultCopyWith(GridUpdateResult value, $Res Function(GridUpdateResult) _then) = _$GridUpdateResultCopyWithImpl;
@useResult
$Res call({
 Map<String, GridCell> updatedGrid, List<GridCell> fibonacciCells, List<GridCell> crossCells
});




}
/// @nodoc
class _$GridUpdateResultCopyWithImpl<$Res>
    implements $GridUpdateResultCopyWith<$Res> {
  _$GridUpdateResultCopyWithImpl(this._self, this._then);

  final GridUpdateResult _self;
  final $Res Function(GridUpdateResult) _then;

/// Create a copy of GridUpdateResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? updatedGrid = null,Object? fibonacciCells = null,Object? crossCells = null,}) {
  return _then(_self.copyWith(
updatedGrid: null == updatedGrid ? _self.updatedGrid : updatedGrid // ignore: cast_nullable_to_non_nullable
as Map<String, GridCell>,fibonacciCells: null == fibonacciCells ? _self.fibonacciCells : fibonacciCells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,crossCells: null == crossCells ? _self.crossCells : crossCells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,
  ));
}

}


/// Adds pattern-matching-related methods to [GridUpdateResult].
extension GridUpdateResultPatterns on GridUpdateResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GridUpdateResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GridUpdateResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GridUpdateResult value)  $default,){
final _that = this;
switch (_that) {
case _GridUpdateResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GridUpdateResult value)?  $default,){
final _that = this;
switch (_that) {
case _GridUpdateResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, GridCell> updatedGrid,  List<GridCell> fibonacciCells,  List<GridCell> crossCells)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GridUpdateResult() when $default != null:
return $default(_that.updatedGrid,_that.fibonacciCells,_that.crossCells);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, GridCell> updatedGrid,  List<GridCell> fibonacciCells,  List<GridCell> crossCells)  $default,) {final _that = this;
switch (_that) {
case _GridUpdateResult():
return $default(_that.updatedGrid,_that.fibonacciCells,_that.crossCells);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, GridCell> updatedGrid,  List<GridCell> fibonacciCells,  List<GridCell> crossCells)?  $default,) {final _that = this;
switch (_that) {
case _GridUpdateResult() when $default != null:
return $default(_that.updatedGrid,_that.fibonacciCells,_that.crossCells);case _:
  return null;

}
}

}

/// @nodoc


class _GridUpdateResult implements GridUpdateResult {
  const _GridUpdateResult({required final  Map<String, GridCell> updatedGrid, required final  List<GridCell> fibonacciCells, required final  List<GridCell> crossCells}): _updatedGrid = updatedGrid,_fibonacciCells = fibonacciCells,_crossCells = crossCells;
  

 final  Map<String, GridCell> _updatedGrid;
@override Map<String, GridCell> get updatedGrid {
  if (_updatedGrid is EqualUnmodifiableMapView) return _updatedGrid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_updatedGrid);
}

 final  List<GridCell> _fibonacciCells;
@override List<GridCell> get fibonacciCells {
  if (_fibonacciCells is EqualUnmodifiableListView) return _fibonacciCells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fibonacciCells);
}

 final  List<GridCell> _crossCells;
@override List<GridCell> get crossCells {
  if (_crossCells is EqualUnmodifiableListView) return _crossCells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crossCells);
}


/// Create a copy of GridUpdateResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GridUpdateResultCopyWith<_GridUpdateResult> get copyWith => __$GridUpdateResultCopyWithImpl<_GridUpdateResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GridUpdateResult&&const DeepCollectionEquality().equals(other._updatedGrid, _updatedGrid)&&const DeepCollectionEquality().equals(other._fibonacciCells, _fibonacciCells)&&const DeepCollectionEquality().equals(other._crossCells, _crossCells));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_updatedGrid),const DeepCollectionEquality().hash(_fibonacciCells),const DeepCollectionEquality().hash(_crossCells));

@override
String toString() {
  return 'GridUpdateResult(updatedGrid: $updatedGrid, fibonacciCells: $fibonacciCells, crossCells: $crossCells)';
}


}

/// @nodoc
abstract mixin class _$GridUpdateResultCopyWith<$Res> implements $GridUpdateResultCopyWith<$Res> {
  factory _$GridUpdateResultCopyWith(_GridUpdateResult value, $Res Function(_GridUpdateResult) _then) = __$GridUpdateResultCopyWithImpl;
@override @useResult
$Res call({
 Map<String, GridCell> updatedGrid, List<GridCell> fibonacciCells, List<GridCell> crossCells
});




}
/// @nodoc
class __$GridUpdateResultCopyWithImpl<$Res>
    implements _$GridUpdateResultCopyWith<$Res> {
  __$GridUpdateResultCopyWithImpl(this._self, this._then);

  final _GridUpdateResult _self;
  final $Res Function(_GridUpdateResult) _then;

/// Create a copy of GridUpdateResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? updatedGrid = null,Object? fibonacciCells = null,Object? crossCells = null,}) {
  return _then(_GridUpdateResult(
updatedGrid: null == updatedGrid ? _self._updatedGrid : updatedGrid // ignore: cast_nullable_to_non_nullable
as Map<String, GridCell>,fibonacciCells: null == fibonacciCells ? _self._fibonacciCells : fibonacciCells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,crossCells: null == crossCells ? _self._crossCells : crossCells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,
  ));
}


}

// dart format on
