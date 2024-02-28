import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

import '../model/purchase_model.dart';

class PurchaseController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductModel> products = [];
  var searchProductFoundResult = [].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
  var isLocalSaveLoading = false.obs;
  var purchaseModels = [
    PurchaseModel(
      date: DateTime.now(),
      dateAdded: DateTime.now(),
      dateModified: DateTime.now(),
      productId: '',
      productName: '',
      quantity: 0,
      reference: '',
      totalAmount: 0,
      price: 0,
      id: '',
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
    purchaseModels.add(
      PurchaseModel(
        date: DateTime.now(),
        dateAdded: DateTime.now(),
        dateModified: DateTime.now(),
        productId: '',
        productName: '',
        quantity: 0,
        reference: '',
        totalAmount: 0,
        price: 0,
        id: '',
      ).obs,
    );
  }

  saveSalesProductToDB() async {
    isLocalSaveLoading(false);
    var salesBox = Hive.box<SalesModel>('sales');
    var productsBox = Hive.box<ProductModel>('products');
    final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    // for (var element in purchaseModels) {
    //   String key = dateFormatter.format(DateTime.now());
    //   await salesBox.put(
    //     key,
    //     SalesModel(
    //       id: key,
    //       date: element.value.date,
    //       dateAdded: now,
    //       dateModified: now,
    //       price: element.value.price,
    //       totalAmount: element.value.totalAmount,
    //       productId: element.value.productId,
    //       customerId: element.value.customerId,
    //       customerName: element.value.customerName,
    //       productName: element.value.productName,
    //       quantity: element.value.quantity,
    //       reference: element.value.reference,
    //     ),
    //   );
    //
    //   var currentProduct = productsBox.get(element.value.productId);
    //   currentProduct!.quantityOnHand -= element.value.quantity;
    //   productsBox.put(element.value.productId, currentProduct);
    // }

    isLocalSaveLoading(false);
    // Get.back();
  }
}
