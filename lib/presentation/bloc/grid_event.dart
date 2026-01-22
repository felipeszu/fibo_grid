part of 'grid_bloc.dart';

@freezed
class GridEvent with _$GridEvent {
  const factory GridEvent.loadGrid() = _LoadGrid;
  const factory GridEvent.cellTapped(int x, int y) = _CellTapped;
  const factory GridEvent.resetCrossHighlights() = _ResetCross;
  const factory GridEvent.resetFiboHighlights() = _ResetFibo;

  // Private internal event merging?
  const factory GridEvent.resetHighlights({
    @Default(false) bool resetCross,
    @Default(false) bool resetFibo,
  }) = _ResetHighlights;
}
