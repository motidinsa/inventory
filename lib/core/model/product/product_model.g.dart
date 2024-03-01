// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 1;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      name: fields[0] as String,
      description: fields[1] as String?,
      categoryId: fields[2] as String,
      categoryName: fields[3] as String,
      productId: fields[4] as String,
      cost: fields[5] as double,
      price: fields[6] as double,
      quantityOnHand: fields[7] as String,
      reorderQuantity: fields[8] as int,
      unitOfMeasurement: fields[9] as String,
      createdByUserId: fields[10] as int,
      dateCreated: fields[11] as DateTime,
      dateModified: fields[12] as DateTime,
      isAppWriteSynced: fields[13] as bool?,
      localImagePath: fields[14] as String?,
      onlineImagePath: fields[15] as String?,
      id: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.categoryId)
      ..writeByte(3)
      ..write(obj.categoryName)
      ..writeByte(4)
      ..write(obj.productId)
      ..writeByte(5)
      ..write(obj.cost)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.quantityOnHand)
      ..writeByte(8)
      ..write(obj.reorderQuantity)
      ..writeByte(9)
      ..write(obj.unitOfMeasurement)
      ..writeByte(10)
      ..write(obj.createdByUserId)
      ..writeByte(11)
      ..write(obj.dateCreated)
      ..writeByte(12)
      ..write(obj.dateModified)
      ..writeByte(13)
      ..write(obj.isAppWriteSynced)
      ..writeByte(14)
      ..write(obj.localImagePath)
      ..writeByte(15)
      ..write(obj.onlineImagePath)
      ..writeByte(16)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
