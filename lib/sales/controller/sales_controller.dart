import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

class SalesController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductModel> products = [];
  var searchProductFoundResult = [].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
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

  saveSalesProductToDB() async {
    var salesBox = Hive.box<SalesModel>('sales');
    final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    String key = dateFormatter.format(now);
    await salesBox.put(
      key,
      SalesModel(
        name: productInfo.value.name,
        description: productInfo.value.description,
        categoryId: productInfo.value.categoryId,
        categoryName: productInfo.value.categoryName,
        productId: productInfo.value.productId,
        cost: productInfo.value.cost,
        price: productInfo.value.price,
        createdByUserId: productInfo.value.createdByUserId,
        dateCreated: productInfo.value.dateCreated,
        dateModified: productInfo.value.dateModified,
        quantityOnHand: productInfo.value.quantityOnHand,
        reorderQuantity: productInfo.value.reorderQuantity,
        unitOfMeasurement: productInfo.value.unitOfMeasurement,
        id: key,
      ),
    );
    isLocalSaveLoading(false);
    Get.back();
  }
}
