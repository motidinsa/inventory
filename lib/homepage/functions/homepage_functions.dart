import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/routes/route_names.dart';

navigateFromHomepage({required String title, bool? isAddIcon}) async {
  if (title == customerN) {
    if (isAddIcon == true) {
      Get.toNamed(RouteName.addCustomer);
    } else {
      Get.toNamed(RouteName.customerList);
    }
  } else if (title == salesN) {
    if (isAddIcon == true) {
      Get.toNamed(RouteName.addSales);
    }
  } else if (title == productN) {
    if (isAddIcon == true) {
      Get.toNamed(RouteName.addProduct);
    } else {
      Get.toNamed(RouteName.productList);
    }
  } else if (title == purchaseN) {
    if (isAddIcon == true) {
      Get.toNamed(RouteName.addPurchase);
    }
  } else if (title == vendorN) {
    if (isAddIcon == true) {
      Get.toNamed(RouteName.addVendor);
    } else {
      Get.toNamed(RouteName.vendorList);
    }
  } else if (title == reorderStockN) {
    Get.toNamed(RouteName.reorderStock);
  }
}
