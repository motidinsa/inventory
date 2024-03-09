// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_of_measurement_database_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnitOfMeasurementDatabaseModelAdapter
    extends TypeAdapter<UnitOfMeasurementDatabaseModel> {
  @override
  final int typeId = 5;

  @override
  UnitOfMeasurementDatabaseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UnitOfMeasurementDatabaseModel(
      name: fields[0] as String,
      createdByUserId: fields[2] as String,
      dateCreated: fields[4] as DateTime,
      dateModified: fields[5] as DateTime,
      uomId: fields[1] as String,
      isAppWriteSynced: fields[6] as bool?,
      modifiedByUserId: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UnitOfMeasurementDatabaseModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.uomId)
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
      other is UnitOfMeasurementDatabaseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
