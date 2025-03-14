import 'package:get/get.dart';
import 'package:inventory/core/model/customer/customer_database_model.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/sales/sales_model.dart';

import 'package:inventory/core/functions/helper_functions.dart';

class AddSalesController extends GetxController {
  bool isLoading = false;
  bool isSubmitButtonPressed = false;
  DateTime selectedSalesDate = DateTime.now();
  List<ProductDatabaseModel> searchProductFoundResult = [];
  List<CustomerDatabaseModel> searchCustomerFoundResult = [];
  CustomerDatabaseModel? customerDatabaseModel;
  String subtotal = '0';
  String discount = '';
  String total = '0';
  String cashReceived = '';
  String cash = '';
  String transfer = '';
  String credit = '0';
  List<SalesModel> salesModels = [
    SalesModel(
      productId: '',
      productName: '',
      quantity: '',
      price: '',
      totalAmount: 0,
      productQuantity: 0
    )
  ];

  static AddSalesController get to => Get.find();
}
