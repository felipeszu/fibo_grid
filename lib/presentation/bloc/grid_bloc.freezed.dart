// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GridEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridEvent()';
}


}

/// @nodoc
class $GridEventCopyWith<$Res>  {
$GridEventCopyWith(GridEvent _, $Res Function(GridEvent) __);
}


/// Adds pattern-matching-related methods to [GridEvent].
extension GridEventPatterns on GridEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadGrid value)?  loadGrid,TResult Function( _CellTapped value)?  cellTapped,TResult Function( _ResetCross value)?  resetCrossHighlights,TResult Function( _ResetFibo value)?  resetFiboHighlights,TResult Function( _ResetHighlights value)?  resetHighlights,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadGrid() when loadGrid != null:
return loadGrid(_that);case _CellTapped() when cellTapped != null:
return cellTapped(_that);case _ResetCross() when resetCrossHighlights != null:
return resetCrossHighlights(_that);case _ResetFibo() when resetFiboHighlights != null:
return resetFiboHighlights(_that);case _ResetHighlights() when resetHighlights != null:
return resetHighlights(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadGrid value)  loadGrid,required TResult Function( _CellTapped value)  cellTapped,required TResult Function( _ResetCross value)  resetCrossHighlights,required TResult Function( _ResetFibo value)  resetFiboHighlights,required TResult Function( _ResetHighlights value)  resetHighlights,}){
final _that = this;
switch (_that) {
case _LoadGrid():
return loadGrid(_that);case _CellTapped():
return cellTapped(_that);case _ResetCross():
return resetCrossHighlights(_that);case _ResetFibo():
return resetFiboHighlights(_that);case _ResetHighlights():
return resetHighlights(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadGrid value)?  loadGrid,TResult? Function( _CellTapped value)?  cellTapped,TResult? Function( _ResetCross value)?  resetCrossHighlights,TResult? Function( _ResetFibo value)?  resetFiboHighlights,TResult? Function( _ResetHighlights value)?  resetHighlights,}){
final _that = this;
switch (_that) {
case _LoadGrid() when loadGrid != null:
return loadGrid(_that);case _CellTapped() when cellTapped != null:
return cellTapped(_that);case _ResetCross() when resetCrossHighlights != null:
return resetCrossHighlights(_that);case _ResetFibo() when resetFiboHighlights != null:
return resetFiboHighlights(_that);case _ResetHighlights() when resetHighlights != null:
return resetHighlights(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadGrid,TResult Function( int x,  int y)?  cellTapped,TResult Function()?  resetCrossHighlights,TResult Function()?  resetFiboHighlights,TResult Function( bool resetCross,  bool resetFibo)?  resetHighlights,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadGrid() when loadGrid != null:
return loadGrid();case _CellTapped() when cellTapped != null:
return cellTapped(_that.x,_that.y);case _ResetCross() when resetCrossHighlights != null:
return resetCrossHighlights();case _ResetFibo() when resetFiboHighlights != null:
return resetFiboHighlights();case _ResetHighlights() when resetHighlights != null:
return resetHighlights(_that.resetCross,_that.resetFibo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadGrid,required TResult Function( int x,  int y)  cellTapped,required TResult Function()  resetCrossHighlights,required TResult Function()  resetFiboHighlights,required TResult Function( bool resetCross,  bool resetFibo)  resetHighlights,}) {final _that = this;
switch (_that) {
case _LoadGrid():
return loadGrid();case _CellTapped():
return cellTapped(_that.x,_that.y);case _ResetCross():
return resetCrossHighlights();case _ResetFibo():
return resetFiboHighlights();case _ResetHighlights():
return resetHighlights(_that.resetCross,_that.resetFibo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadGrid,TResult? Function( int x,  int y)?  cellTapped,TResult? Function()?  resetCrossHighlights,TResult? Function()?  resetFiboHighlights,TResult? Function( bool resetCross,  bool resetFibo)?  resetHighlights,}) {final _that = this;
switch (_that) {
case _LoadGrid() when loadGrid != null:
return loadGrid();case _CellTapped() when cellTapped != null:
return cellTapped(_that.x,_that.y);case _ResetCross() when resetCrossHighlights != null:
return resetCrossHighlights();case _ResetFibo() when resetFiboHighlights != null:
return resetFiboHighlights();case _ResetHighlights() when resetHighlights != null:
return resetHighlights(_that.resetCross,_that.resetFibo);case _:
  return null;

}
}

}

/// @nodoc


class _LoadGrid implements GridEvent {
  const _LoadGrid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadGrid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridEvent.loadGrid()';
}


}




/// @nodoc


class _CellTapped implements GridEvent {
  const _CellTapped(this.x, this.y);
  

 final  int x;
 final  int y;

/// Create a copy of GridEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CellTappedCopyWith<_CellTapped> get copyWith => __$CellTappedCopyWithImpl<_CellTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CellTapped&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}


@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'GridEvent.cellTapped(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$CellTappedCopyWith<$Res> implements $GridEventCopyWith<$Res> {
  factory _$CellTappedCopyWith(_CellTapped value, $Res Function(_CellTapped) _then) = __$CellTappedCopyWithImpl;
@useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class __$CellTappedCopyWithImpl<$Res>
    implements _$CellTappedCopyWith<$Res> {
  __$CellTappedCopyWithImpl(this._self, this._then);

  final _CellTapped _self;
  final $Res Function(_CellTapped) _then;

/// Create a copy of GridEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_CellTapped(
null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ResetCross implements GridEvent {
  const _ResetCross();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetCross);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridEvent.resetCrossHighlights()';
}


}




/// @nodoc


class _ResetFibo implements GridEvent {
  const _ResetFibo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetFibo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridEvent.resetFiboHighlights()';
}


}




/// @nodoc


class _ResetHighlights implements GridEvent {
  const _ResetHighlights({this.resetCross = false, this.resetFibo = false});
  

@JsonKey() final  bool resetCross;
@JsonKey() final  bool resetFibo;

/// Create a copy of GridEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetHighlightsCopyWith<_ResetHighlights> get copyWith => __$ResetHighlightsCopyWithImpl<_ResetHighlights>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetHighlights&&(identical(other.resetCross, resetCross) || other.resetCross == resetCross)&&(identical(other.resetFibo, resetFibo) || other.resetFibo == resetFibo));
}


@override
int get hashCode => Object.hash(runtimeType,resetCross,resetFibo);

@override
String toString() {
  return 'GridEvent.resetHighlights(resetCross: $resetCross, resetFibo: $resetFibo)';
}


}

/// @nodoc
abstract mixin class _$ResetHighlightsCopyWith<$Res> implements $GridEventCopyWith<$Res> {
  factory _$ResetHighlightsCopyWith(_ResetHighlights value, $Res Function(_ResetHighlights) _then) = __$ResetHighlightsCopyWithImpl;
@useResult
$Res call({
 bool resetCross, bool resetFibo
});




}
/// @nodoc
class __$ResetHighlightsCopyWithImpl<$Res>
    implements _$ResetHighlightsCopyWith<$Res> {
  __$ResetHighlightsCopyWithImpl(this._self, this._then);

  final _ResetHighlights _self;
  final $Res Function(_ResetHighlights) _then;

/// Create a copy of GridEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resetCross = null,Object? resetFibo = null,}) {
  return _then(_ResetHighlights(
resetCross: null == resetCross ? _self.resetCross : resetCross // ignore: cast_nullable_to_non_nullable
as bool,resetFibo: null == resetFibo ? _self.resetFibo : resetFibo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$GridState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridState()';
}


}

/// @nodoc
class $GridStateCopyWith<$Res>  {
$GridStateCopyWith(GridState _, $Res Function(GridState) __);
}


/// Adds pattern-matching-related methods to [GridState].
extension GridStatePatterns on GridState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _$GridStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _$GridStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _$GridStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _$GridStateLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _$GridStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _$GridStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, GridCell> grid,  List<GridCell> fibonacciCells,  List<GridCell> crossCells)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _$GridStateLoaded() when loaded != null:
return loaded(_that.grid,_that.fibonacciCells,_that.crossCells);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, GridCell> grid,  List<GridCell> fibonacciCells,  List<GridCell> crossCells)  loaded,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _$GridStateLoaded():
return loaded(_that.grid,_that.fibonacciCells,_that.crossCells);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, GridCell> grid,  List<GridCell> fibonacciCells,  List<GridCell> crossCells)?  loaded,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _$GridStateLoaded() when loaded != null:
return loaded(_that.grid,_that.fibonacciCells,_that.crossCells);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GridState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridState.initial()';
}


}




/// @nodoc


class _Loading implements GridState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GridState.loading()';
}


}




/// @nodoc


class _$GridStateLoaded implements GridState {
  const _$GridStateLoaded({required final  Map<String, GridCell> grid, final  List<GridCell> fibonacciCells = const [], final  List<GridCell> crossCells = const []}): _grid = grid,_fibonacciCells = fibonacciCells,_crossCells = crossCells;
  

 final  Map<String, GridCell> _grid;
 Map<String, GridCell> get grid {
  if (_grid is EqualUnmodifiableMapView) return _grid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_grid);
}

 final  List<GridCell> _fibonacciCells;
@JsonKey() List<GridCell> get fibonacciCells {
  if (_fibonacciCells is EqualUnmodifiableListView) return _fibonacciCells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fibonacciCells);
}

 final  List<GridCell> _crossCells;
@JsonKey() List<GridCell> get crossCells {
  if (_crossCells is EqualUnmodifiableListView) return _crossCells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crossCells);
}


/// Create a copy of GridState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$$GridStateLoadedCopyWith<_$GridStateLoaded> get copyWith => __$$GridStateLoadedCopyWithImpl<_$GridStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GridStateLoaded&&const DeepCollectionEquality().equals(other._grid, _grid)&&const DeepCollectionEquality().equals(other._fibonacciCells, _fibonacciCells)&&const DeepCollectionEquality().equals(other._crossCells, _crossCells));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_grid),const DeepCollectionEquality().hash(_fibonacciCells),const DeepCollectionEquality().hash(_crossCells));

@override
String toString() {
  return 'GridState.loaded(grid: $grid, fibonacciCells: $fibonacciCells, crossCells: $crossCells)';
}


}

/// @nodoc
abstract mixin class _$$GridStateLoadedCopyWith<$Res> implements $GridStateCopyWith<$Res> {
  factory _$$GridStateLoadedCopyWith(_$GridStateLoaded value, $Res Function(_$GridStateLoaded) _then) = __$$GridStateLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, GridCell> grid, List<GridCell> fibonacciCells, List<GridCell> crossCells
});




}
/// @nodoc
class __$$GridStateLoadedCopyWithImpl<$Res>
    implements _$$GridStateLoadedCopyWith<$Res> {
  __$$GridStateLoadedCopyWithImpl(this._self, this._then);

  final _$GridStateLoaded _self;
  final $Res Function(_$GridStateLoaded) _then;

/// Create a copy of GridState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? grid = null,Object? fibonacciCells = null,Object? crossCells = null,}) {
  return _then(_$GridStateLoaded(
grid: null == grid ? _self._grid : grid // ignore: cast_nullable_to_non_nullable
as Map<String, GridCell>,fibonacciCells: null == fibonacciCells ? _self._fibonacciCells : fibonacciCells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,crossCells: null == crossCells ? _self._crossCells : crossCells // ignore: cast_nullable_to_non_nullable
as List<GridCell>,
  ));
}


}

// dart format on
