import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/model/product/product_model.dart';

import 'package:my_inventory/sales/model/sales_model.dart';

hiveInit() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  Hive.registerAdapter(SalesModelAdapter());
  await Hive.openBox<ProductModel>('products');
  await Hive.openBox<SalesModel>('sales');
}
