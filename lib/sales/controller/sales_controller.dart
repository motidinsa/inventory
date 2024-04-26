import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/sales/group_sales_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_model.dart';
import 'package:my_inventory/core/model/sales/sales_payment_database_model.dart';

class SalesController extends GetxController {
  DateTime now = DateTime.now();
  RxList<ProductDatabaseModel> searchProductFoundResult =
      <ProductDatabaseModel>[].obs;
  RxList<CustomerDatabaseModel> searchCustomerFoundResult =
      <CustomerDatabaseModel>[].obs;
  String subtotal = '0';
  String? customerId;
  String? customerName;
  String? customerPhone;
  String? customerAddress;
  DateTime salesDate = DateTime.now();
  String discount='';

  String total = '0';
  String cashReceived = '2';
  // String cashh = '';
  String transfer = '20';
  String credit = '0';

  var isLocalSaveLoading = false.obs;
  List<SalesModel> salesModels = [
    SalesModel(
      productId: '',
      productName: '',
      quantity: '',
      price: '',
      totalAmount: 0,
    )
  ];

  static SalesController get to => Get.find();

  addSalesProduct() {
    unFocus();
    salesModels.add(
      SalesModel(
        productId: '',
        productName: '',
        quantity: '',
        price: '',
        totalAmount: 0,
      ),
    );
    update();
  }
}
