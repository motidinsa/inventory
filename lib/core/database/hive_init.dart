import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/purchase/model/purchase_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

import '../model/category/category_database_model.dart';

hiveInit() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductDatabaseModelAdapter());
  Hive.registerAdapter(SalesModelAdapter());
  Hive.registerAdapter(PurchaseModelAdapter());
  Hive.registerAdapter(CategoryDatabaseModelAdapter());
  await Hive.openBox<ProductDatabaseModel>('products');
  await Hive.openBox<SalesModel>('sales');
  await Hive.openBox<PurchaseModel>('purchases');
  await Hive.openBox<CategoryDatabaseModel>('category');
}
