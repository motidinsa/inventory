import 'package:get/get.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/add_product/ui/add_product.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/product_list/ui/product_list.dart';
import 'package:my_inventory/sales/ui/sales.dart';

navigateFromHomepage({required String title, bool? isAddIcon}) {
  var titleToPage = {
    customerN(): isAddIcon == true
        ? () => Get.to(
              () => AddCustomer(),
            )
        : () => Get.to(
              () => Sales(),
            ),
    salesN(): () => Get.to(
          () => Sales(),
        ),
    productN(): isAddIcon == true
        ? () => Get.to(
              () => const AddProduct(),
            )
        : () => Get.to(
              () => ProductList(),
            ),
  };
  if (titleToPage[title] != null) {
    titleToPage[title]!();
  }
}
