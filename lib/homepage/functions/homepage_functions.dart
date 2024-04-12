import 'package:get/get.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/add_product/ui/add_product.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/product_list/ui/product_list.dart';
import 'package:my_inventory/purchase/ui/purchase.dart';
import 'package:my_inventory/reorder_stock/ui/reorder_stock.dart';
import 'package:my_inventory/sales/ui/sales.dart';

import 'package:my_inventory/customer_list/ui/customer_list.dart';

import 'package:my_inventory/add_vendor/ui/add_vendor.dart';
import 'package:my_inventory/vendor_list/ui/vendor_list.dart';

navigateFromHomepage({required String title, bool? isAddIcon}) async {
  if (title == customerN) {
    if (isAddIcon == true) {
      Get.to(() => AddCustomer());
    } else {
      Get.toNamed(RouteName.customerList);
      // Get.to(() => CustomerList());
    }
  } else if (title == salesN) {
    Get.to(() => Sales());
  } else if (title == productN) {
    if (isAddIcon == true) {
      Get.to(() => AddProduct());
    } else {
      Get.to(() => ProductList());
    }
  } else if (title == purchaseN) {
    Get.to(() => Purchase());
  } else if (title == vendorN) {
    if (isAddIcon == true) {
      Get.to(() => AddVendor());
    }
    else {
      Get.to(() => VendorList());
    }
  }else if (title == reorderStockN) {

      Get.to(() => ReorderStock());

  }
}
