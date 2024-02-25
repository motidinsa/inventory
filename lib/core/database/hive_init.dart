import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/model/product/product_model.dart';

hiveInit() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  await Hive.openBox<ProductModel>('products');
}
