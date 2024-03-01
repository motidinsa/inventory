import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/purchase/model/purchase_model.dart';

class PurchaseController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductModel> products = [];
  var searchProductFoundResult = [].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
  RxString emptyString = ''.obs;
  var isLocalSaveLoading = false.obs;
  var purchaseModels = [
    PurchaseModel(
      date: DateTime.now(),
      dateAdded: DateTime.now(),
      dateModified: DateTime.now(),
      productId: '',
      productName: '',
      quantity: '',
      reference: '',
      totalAmount: 0,
      price: '',
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

  addPurchaseProduct() {
    purchaseModels.add(
      PurchaseModel(
        date: DateTime.now(),
        dateAdded: DateTime.now(),
        dateModified: DateTime.now(),
        productId: '',
        productName: '',
        quantity: '',
        reference: '',
        totalAmount: 0,
        price: '',
        id: '',
      ).obs,
    );
  }

  savePurchaseProductToDB() async {
    // isLocalSaveLoading(false);
    // var salesBox = Hive.box<SalesModel>('sales');
    // var productsBox = Hive.box<ProductModel>('products');
    // final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
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

    // isLocalSaveLoading(false);
    // Get.back();

    isLocalSaveLoading(true);
    var purchasesBox = Hive.box<PurchaseModel>('purchases');
    var productsBox = Hive.box<ProductModel>('products');
    final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    for (var element in purchaseModels) {
      String key = dateFormatter.format(DateTime.now());
      await purchasesBox.put(
        key,
        PurchaseModel(
          id: key,
          date: element.value.date,
          dateAdded: now,
          dateModified: now,
          price: element.value.price,
          totalAmount: element.value.totalAmount,
          productId: element.value.productId,
          customerId: element.value.customerId,
          customerName: element.value.customerName,
          productName: element.value.productName,
          quantity: element.value.quantity,
          reference: element.value.reference,
          vendorId: element.value.vendorId,
          vendorName: element.value.vendorName,
        ),
      );

      var currentProduct = productsBox.get(element.value.productId);
      currentProduct!.quantityOnHand =
          (double.parse(currentProduct.quantityOnHand) +
                  double.parse(element.value.quantity))
              .toString();
      await productsBox.put(element.value.productId, currentProduct);
    }

    isLocalSaveLoading(false);
  }
}
