import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

import 'package:my_inventory/customer_detail/ui/customer_detail.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

onSingleProfileDetailPressed({required int index}) {
  unFocus();
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == customerListN) {
    Get.to(() => CustomerDetail(
          customerDatabaseModel: CustomerListController.to.customerList[index],
          index: index,
        ));
  }
}
