import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'grid_cell.freezed.dart';
part 'grid_cell.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class GridCell with _$GridCell {
  const factory GridCell({
    @HiveField(0) required int x,
    @HiveField(1) required int y,
    @HiveField(2) @Default(0) int value,
  }) = _GridCell;
}
