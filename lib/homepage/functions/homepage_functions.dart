import 'package:get/get.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/add_product/ui/add_product.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/product_list/ui/product_list.dart';
import 'package:my_inventory/purchase/ui/purchase.dart';
import 'package:my_inventory/sales/ui/sales.dart';

import 'package:my_inventory/customer_list/ui/customer_list.dart';

import '../../add_vendor/ui/add_vendor.dart';

navigateFromHomepage({required String title, bool? isAddIcon}) async {
  AppController appController = Get.find();
  if (title == customerN()) {
    if (isAddIcon == true) {
      Get.to(() => AddCustomer());
    } else {
      Get.to(() => CustomerList());
    }
  } else if (title == salesN()) {
    Get.to(() => Sales());
  } else if (title == productN) {
    if (isAddIcon == true) {
      Get.to(() => AddProduct());
    } else {
      Get.to(() => ProductList());
    }
  } else if (title == purchaseN()) {
    appController.currentPages.add(purchaseN());
    Get.to(() => Purchase());
  } else if (title == vendorN()) {
    if (isAddIcon == true) {
      Get.to(() => AddVendor());
    }
    // else {
    //   Get.to(() => CustomerList());
    // }
  }
}
