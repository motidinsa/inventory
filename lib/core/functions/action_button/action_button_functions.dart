import 'package:get/get.dart';
import 'package:my_inventory/signup/functions/signup_functions.dart';

import 'package:my_inventory/add_customer/functions/add_customer_functions.dart';
import 'package:my_inventory/edit_customer/functions/edit_customer_functions.dart';
import 'package:my_inventory/product_detail/functions/product_detail_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';

import 'package:my_inventory/add_vendor/functions/add_vendor_functions.dart';
import 'package:my_inventory/edit_vendor/functions/edit_vendor_functions.dart';
import 'package:my_inventory/core/functions/add_item_functions.dart';

import '../../../add_product/functions/add_product_functions.dart';
import '../../../add_purchase/functions/add_purchase_functions.dart';
import '../../../add_sales/functions/add_sales_functions.dart';

onActionButtonPressed({String? redirectFrom}) async {
  String currentRoute = Get.currentRoute;

  if (redirectFrom == productDetailN) {
    deleteProduct();
  } else if (currentRoute == RouteName.signUp) {
    onSignupButtonPressed();
  } else if ([RouteName.customerDetail, RouteName.vendorDetail]
      .contains(currentRoute)) {
    showAlertDialogConfirmation();
  }
  // else if (AppController.to.formKey.currentState!.validate()) {
  //   if (redirectFrom == addProductN) {
  //     AddProductController addProductController = Get.find();
  //     addProductController.isSubmitButtonPressed = true;
  //     addProductController.onAddProductSaveButtonPressed();
  //   } else if (redirectFrom == salesN) {
  //     saveSalesProductToDB();
  //   } else if (redirectFrom == purchaseN) {
  //     addPurchaseController addPurchaseController = Get.find();
  //     addPurchaseController.savePurchaseProductToDB();
  //   } else if (redirectFrom == editProductN) {
  //     EditProductController editProductController = Get.find();
  //     editProductController.onEditProductSaveButtonPressed();
  //   } else if (redirectFrom == dateSelectN) {
  //     onFilterSelect();
  //   }
  else if (currentRoute == RouteName.addCustomer) {
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
    } else if (redirectFrom == uomNameN) {onUnitOfMeasurementAddPressed();
    } else {
      onAddProductSaveButtonPressed();
    }
  }else if (currentRoute == RouteName.addPurchase) {
    onAddPurchaseSaveButtonPressed();
  }else if (currentRoute == RouteName.addSales) {
    onAddSalesSaveButtonPressed();
  }
}
