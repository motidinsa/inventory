// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_database_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDatabaseModelAdapter extends TypeAdapter<ProductDatabaseModel> {
  @override
  final int typeId = 1;

  @override
  ProductDatabaseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductDatabaseModel(
      productName: fields[0] as String,
      description: fields[1] as String?,
      categoryId: fields[2] as String?,
      productId: fields[3] as String?,
      cost: fields[4] as double,
      price: fields[5] as double,
      quantityOnHand: fields[6] as double,
      reorderQuantity: fields[7] as double,
      unitOfMeasurementId: fields[8] as String,
      createdByUserId: fields[9] as String,
      dateCreated: fields[10] as DateTime,
      dateModified: fields[11] as DateTime,
      isAppWriteSynced: fields[12] as bool?,
      localImagePath: fields[13] as String?,
      onlineImagePath: fields[14] as String?,
      id: fields[15] as String,
      modifiedByUserId: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductDatabaseModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.productName)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.categoryId)
      ..writeByte(3)
      ..write(obj.productId)
      ..writeByte(4)
      ..write(obj.cost)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.quantityOnHand)
      ..writeByte(7)
      ..write(obj.reorderQuantity)
      ..writeByte(8)
      ..write(obj.unitOfMeasurementId)
      ..writeByte(9)
      ..write(obj.createdByUserId)
      ..writeByte(10)
      ..write(obj.dateCreated)
      ..writeByte(11)
      ..write(obj.dateModified)
      ..writeByte(12)
      ..write(obj.isAppWriteSynced)
      ..writeByte(13)
      ..write(obj.localImagePath)
      ..writeByte(14)
      ..write(obj.onlineImagePath)
      ..writeByte(15)
      ..write(obj.id)
      ..writeByte(16)
      ..write(obj.modifiedByUserId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDatabaseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
