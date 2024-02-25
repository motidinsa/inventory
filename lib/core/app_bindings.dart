import 'package:get/get.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

class ApplicationBindings implements Bindings {
  ApplicationBindings();

  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
    Get.lazyPut(() => AddCustomerController());
    Get.lazyPut(() => AddVendorController());
    Get.lazyPut(() => AddProductController());
    Get.lazyPut(() => ProductListController());
    Get.lazyPut(() => SalesController());
  }
}
