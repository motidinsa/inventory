import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/purchase/model/purchase_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

import '../model/category/category_database_model.dart';
import '../model/unit_of_measurement/unit_of_measurement_database_model.dart';

hiveInit() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductDatabaseModelAdapter());
  Hive.registerAdapter(SalesModelAdapter());
  Hive.registerAdapter(PurchaseModelAdapter());
  Hive.registerAdapter(CategoryDatabaseModelAdapter());
  Hive.registerAdapter(UnitOfMeasurementDatabaseModelAdapter());
  // const secureStorage = FlutterSecureStorage();
  // final encryptionKeyString = await secureStorage.read(key: 'key');
  // if (encryptionKeyString == null) {
  //   final key = Hive.generateSecureKey();
  //   await secureStorage.write(
  //     key: 'key',
  //     value: base64UrlEncode(key),
  //   );
  // }
  // final key = await secureStorage.read(key: 'key');
  // final encryptionKeyUint8List = base64Url.decode(key!);
  // print('Encryption key Uint8List: $encryptionKeyUint8List');
  // final encryptionKeyUint8List = base64Url.decode('mo');
  await Hive.openBox<ProductDatabaseModel>(
    'products',
    // encryptionCipher: HiveAesCipher(encryptionKeyUint8List)
  );
  await Hive.openBox<SalesModel>('sales');
  await Hive.openBox<PurchaseModel>('purchases');
  await Hive.openBox<CategoryDatabaseModel>('category');
  await Hive.openBox<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
}
