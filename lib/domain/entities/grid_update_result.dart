import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fibo_grid/domain/entities/grid_cell.dart';

part 'grid_update_result.freezed.dart';

@freezed
abstract class GridUpdateResult with _$GridUpdateResult {
  const factory GridUpdateResult({
    required Map<String, GridCell> updatedGrid,
    required List<GridCell> fibonacciCells,
    required List<GridCell> crossCells,
  }) = _GridUpdateResult;
}
