// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_database_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryDatabaseModelAdapter extends TypeAdapter<CategoryDatabaseModel> {
  @override
  final int typeId = 4;

  @override
  CategoryDatabaseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryDatabaseModel(
      categoryId: fields[1] as String,
      createdByUserId: fields[2] as String,
      dateCreated: fields[4] as DateTime,
      dateModified: fields[5] as DateTime,
      categoryName: fields[0] as String,
      isAppWriteSynced: fields[6] as bool?,
      modifiedByUserId: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryDatabaseModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.categoryName)
      ..writeByte(1)
      ..write(obj.categoryId)
      ..writeByte(2)
      ..write(obj.createdByUserId)
      ..writeByte(3)
      ..write(obj.modifiedByUserId)
      ..writeByte(4)
      ..write(obj.dateCreated)
      ..writeByte(5)
      ..write(obj.dateModified)
      ..writeByte(6)
      ..write(obj.isAppWriteSynced);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryDatabaseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
