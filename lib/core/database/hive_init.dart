import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/purchase/model/purchase_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

hiveInit() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductDatabaseModelAdapter());
  Hive.registerAdapter(SalesModelAdapter());
  Hive.registerAdapter(PurchaseModelAdapter());
  Hive.registerAdapter(CategoryDatabaseModelAdapter());
  Hive.registerAdapter(UnitOfMeasurementDatabaseModelAdapter());
  const secureStorage = FlutterSecureStorage();
  final encryptionKeyString = await secureStorage.read(key: 'keyy');
  if (encryptionKeyString == null) {
    final key = Hive.generateSecureKey();
    await secureStorage.write(
      key: 'keyy',
      value: base64UrlEncode(key),
    );
  }
  final key = await secureStorage.read(key: 'keyy');
  // final encryptionKeyUint8List = base64Url.decode(key!);
  // print('Encryption key Uint8List: $encryptionKeyUint8List');
  final encryptionKeyUint8List = base64Url.decode(key!);
  await Hive.openBox<ProductDatabaseModel>(
    'products',
    encryptionCipher: HiveAesCipher(encryptionKeyUint8List)
  );
  await Hive.openBox<SalesModel>('sales');
  await Hive.openBox<PurchaseModel>('purchases');
  await Hive.openBox<CategoryDatabaseModel>('category');
  await Hive.openBox<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
}
