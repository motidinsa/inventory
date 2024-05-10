

import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_list/repository/vendor_list_repository.dart';


onVendorListTextFieldChange({
  required String data,
}) {
  VendorListController vendorListController = VendorListController.to;
  vendorListController.searchedText= data;
  vendorListController.vendorList = VendorListRepository.searchVendor(data: data);
  vendorListController.update();
}