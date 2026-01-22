part of 'grid_bloc.dart';

@freezed
class GridState with _$GridState {
  const factory GridState.initial() = _Initial;
  const factory GridState.loading() = _Loading;
  const factory GridState.loaded({
    required Map<String, GridCell> grid,
    @Default([]) List<GridCell> fibonacciCells,
    @Default([]) List<GridCell> crossCells,
  }) = _$GridStateLoaded; // Custom name to alias it easily if needed
}
