import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';

import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_list/repository/vendor_list_repository.dart';
import 'package:my_inventory/vendor_detail/repository/vendor_detail_repository.dart';

deleteVendor() async {
  try {
    VendorListController vendorListController = VendorListController.to;
    await VendorDetailRepository.deleteVendor();
    vendorListController.vendorList = VendorListRepository.searchVendor(
        data: vendorListController.searchedText);
    if(VendorListRepository.getAllVendors().isEmpty){
      vendorListController.isEmpty = true;
    }
    vendorListController.update();
    showSnackbar(message: successfullyDeletedN,success: true);
    Get.back();
  } on Exception {
    showSnackbar(
        message: someErrorOccurredN, success: false);
  } finally {
    Get.back();
  }
}
