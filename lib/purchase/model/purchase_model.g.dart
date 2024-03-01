// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PurchaseModelAdapter extends TypeAdapter<PurchaseModel> {
  @override
  final int typeId = 3;

  @override
  PurchaseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PurchaseModel(
      productId: fields[0] as String,
      productName: fields[1] as String,
      date: fields[2] as DateTime,
      dateAdded: fields[3] as DateTime,
      dateModified: fields[4] as DateTime,
      reference: fields[5] as String,
      customerId: fields[6] as String?,
      customerName: fields[7] as String?,
      quantity: fields[8] as String,
      totalAmount: fields[9] as double,
      price: fields[10] as String,
      id: fields[11] as String,
      vendorId: fields[12] as String?,
      vendorName: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PurchaseModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productName)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.dateAdded)
      ..writeByte(4)
      ..write(obj.dateModified)
      ..writeByte(5)
      ..write(obj.reference)
      ..writeByte(6)
      ..write(obj.customerId)
      ..writeByte(7)
      ..write(obj.customerName)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.totalAmount)
      ..writeByte(10)
      ..write(obj.price)
      ..writeByte(11)
      ..write(obj.id)
      ..writeByte(12)
      ..write(obj.vendorId)
      ..writeByte(13)
      ..write(obj.vendorName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
