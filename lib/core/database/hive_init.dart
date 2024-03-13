
import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/purchase/model/purchase_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

hiveInit() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SalesModelAdapter());
  Hive.registerAdapter(PurchaseModelAdapter());
  Hive.registerAdapter(CategoryDatabaseModelAdapter());
  Hive.registerAdapter(UnitOfMeasurementDatabaseModelAdapter());
  await Hive.openBox<SalesModel>('sales');
  await Hive.openBox<PurchaseModel>('purchases');
  await Hive.openBox<CategoryDatabaseModel>('category');
  await Hive.openBox<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
}
