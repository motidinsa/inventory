import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

class SalesController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductModel> products = [];
  var searchProductFoundResult = [].obs;
  var salesModel = [
    SalesModel(
      date: DateTime.now(),
      dateAdded: DateTime.now(),
      dateModified: DateTime.now(),
      customerId: '',
      customerName: '',
      productId: '',
      productName: '',
      quantity: 0,
      reference: '',
      totalAmount: 0,
      price: 0,
    ).obs
  ].obs;

  @override
  void onInit() {
    products = Hive.box<ProductModel>('products').values.toList();
    searchProductFoundResult =
        Hive.box<ProductModel>('products').values.toList().obs;
    super.onInit();
  }

  addSalesProduct() {
    salesModel.add(
      SalesModel(
        date: DateTime.now(),
        dateAdded: DateTime.now(),
        dateModified: DateTime.now(),
        customerId: '',
        customerName: '',
        productId: '',
        productName: '',
        quantity: 0,
        reference: '',
        totalAmount: 0,
        price: 0,
      ).obs,
    );
  }
}
