// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_cell.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GridCellAdapter extends TypeAdapter<GridCell> {
  @override
  final typeId = 0;

  @override
  GridCell read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GridCell(
      x: (fields[0] as num).toInt(),
      y: (fields[1] as num).toInt(),
      value: fields[2] == null ? 0 : (fields[2] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, GridCell obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.x)
      ..writeByte(1)
      ..write(obj.y)
      ..writeByte(2)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridCellAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
