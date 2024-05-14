import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

class AddPurchaseController extends GetxController {
  bool isLoading = false;
  bool isSubmitButtonPressed = false;
  DateTime? selectedPurchaseDate;
  List<ProductDatabaseModel> searchProductFoundResult = [];
  List<VendorDatabaseModel> searchVendorFoundResult = [];
  double total = 0;
  VendorDatabaseModel? vendorDatabaseModel;
  List<PurchaseModel> purchaseModels = [
    PurchaseModel(
      productId: '',
      productName: '',
      quantity: '',
      cost: '',
      totalAmount: 0,
    )
  ];

  static AddPurchaseController get to => Get.find();
}
