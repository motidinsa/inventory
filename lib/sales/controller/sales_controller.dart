import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

class SalesController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductModel> products = [];
  var searchProductFoundResult = [].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
  RxString customerName = defaultN.obs;
  RxString emptyString = ''.obs;
  var isLocalSaveLoading = false.obs;
  var salesModels = [
    SalesModel(
      date: DateTime.now(),
      dateAdded: DateTime.now(),
      dateModified: DateTime.now(),
      customerId: '',
      customerName: '',
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

  addSalesProduct() {
    salesModels.add(
      SalesModel(
        date: DateTime.now(),
        dateAdded: DateTime.now(),
        dateModified: DateTime.now(),
        customerId: '',
        customerName: '',
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

  saveSalesProductToDB() async {
    isLocalSaveLoading(true);
    var salesBox = Hive.box<SalesModel>('sales');
    var productsBox = Hive.box<ProductModel>('products');
    final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    for (var element in salesModels) {
      String key = dateFormatter.format(DateTime.now());
      await salesBox.put(
        key,
        SalesModel(
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
          (double.parse(currentProduct.quantityOnHand) -
                  double.parse(element.value.quantity))
              .toString();
      await productsBox.put(element.value.productId, currentProduct);
    }

    isLocalSaveLoading(false);
  }
}
