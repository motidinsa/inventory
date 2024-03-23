import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

import 'package:my_inventory/customer_detail/ui/customer_detail.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

import '../../../sales/controller/sales_controller.dart';

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

String? getProfileId() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    return SalesController.to.customerId;
  }
  return null;
}

String? getProfilePhone() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    return SalesController.to.customerPhone;
  }
  return null;
}

String? getProfileAddress() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    return SalesController.to.customerAddress;
  }
  return null;
}

onProfileCancelPressed() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    SalesController.to.customerId = null;
    SalesController.to.customerName = null;
    SalesController.to.customerPhone = null;
    SalesController.to.customerAddress = null;
    SalesController.to.update();
  }
}
