import 'package:fibo_grid/domain/entities/grid_cell.dart';

abstract class GridRepository {
  Future<Map<String, GridCell>> loadGrid();
  Future<void> saveGrid(Map<String, GridCell> grid);
  Future<void> clearGrid();
}
