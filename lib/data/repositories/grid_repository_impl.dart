import 'package:fibo_grid/domain/entities/grid_cell.dart';
import 'package:fibo_grid/domain/repositories/grid_repository.dart';
import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GridRepository)
class GridRepositoryImpl implements GridRepository {
  static const String _boxName = 'grid_box';

  Future<Box<GridCell>> _getBox() async {
    if (Hive.isBoxOpen(_boxName)) {
      return Hive.box<GridCell>(_boxName);
    }
    return await Hive.openBox<GridCell>(_boxName);
  }

  @override
  Future<Map<String, GridCell>> loadGrid() async {
    final box = await _getBox();
    final Map<String, GridCell> grid = {};

    for (var key in box.keys) {
      final value = box.get(key);
      if (value != null && key is String) {
        grid[key] = value;
      }
    }
    return grid;
  }

  @override
  Future<void> saveGrid(Map<String, GridCell> grid) async {
    final box = await _getBox();
    await box.clear();
    await box.putAll(grid);
  }

  @override
  Future<void> clearGrid() async {
    final box = await _getBox();
    await box.clear();
  }
}
