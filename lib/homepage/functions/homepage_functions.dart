import 'package:get/get.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/sales/ui/sales.dart';

navigateFromHomepage({required String title, bool? isAddIcon}) {
  var titleToPage = {
    customerN(): isAddIcon == true
        ? () => Get.to(
              () => AddCustomer(),
            )
        : () => Get.to(
              () => const Sales(),
            ),
    salesN(): () => Get.to(
          () => const Sales(),
        ),
  };
  if (titleToPage[title] != null) {
    titleToPage[title]!();
  }
  // if(title == customerN()){
  //   Get.to(AddCustomer());
  // }
}
