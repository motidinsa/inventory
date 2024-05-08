import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/signup/functions/signup_functions.dart';

import 'package:my_inventory/add_customer/functions/add_customer_functions.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/edit_customer/functions/edit_customer_functions.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/edit_vendor/controller/edit_vendor_controller.dart';
import 'package:my_inventory/product_detail/functions/product_detail_functions.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/vendor_detail/functions/vendor_detail_functions.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/functions/report/report_functions.dart';

import '../../../add_vendor/functions/add_vendor_functions.dart';
import '../../../edit_vendor/functions/edit_vendor_functions.dart';
import '../add_item_functions.dart';

onActionButtonPressed({String? redirectFrom}) async {
  final Isar isar = Get.find();
  String currentRoute = Get.currentRoute;

  if (redirectFrom == productDetailN) {
    deleteProduct();
  } else if (currentRoute == RouteName.signUp) {
    onSignupButtonPressed();
  } else if ([RouteName.customerDetail, RouteName.vendorDetail]
      .contains(currentRoute)) {
    showAlertDialogConfirmation();
  } else if (AppController.to.formKey.currentState!.validate()) {
    if (redirectFrom == addProductN) {
      AddProductController addProductController = Get.find();
      addProductController.isSubmitButtonPressed = true;
      addProductController.onAddProductSaveButtonPressed();
    } else if (redirectFrom == salesN) {
      saveSalesProductToDB();
    } else if (redirectFrom == purchaseN) {
      PurchaseController purchaseController = Get.find();
      purchaseController.savePurchaseProductToDB();
    } else if (redirectFrom == editProductN) {
      EditProductController editProductController = Get.find();
      editProductController.onEditProductSaveButtonPressed();
    } else if (redirectFrom == dateSelectN) {
      onFilterSelect();
    } else if (currentRoute == RouteName.addCustomer) {
      onAddCustomerSaveButtonPressed();
    } else if (currentRoute == RouteName.editCustomer) {
      onEditCustomerSaveButtonPressed();
    } else if (currentRoute == RouteName.addVendor) {
      onAddVendorSaveButtonPressed();
    } else if (currentRoute == RouteName.editVendor) {
      onEditVendorSaveButtonPressed();
    } else if (currentRoute == RouteName.addProduct) {
      if (redirectFrom == categoryNameN) {
        onCategoryAddPressed();
      } else if (redirectFrom == uomNameN) {
      } else {
        onEditVendorSaveButtonPressed();
      }
    }
  }
}
