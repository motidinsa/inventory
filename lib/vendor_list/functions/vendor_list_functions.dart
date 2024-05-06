import 'package:get/get.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

import '../controller/vendor_list_controller.dart';
import '../repository/vendor_list_repository.dart';


onVendorListTextFieldChange({
  required String data,
}) {
  VendorListController vendorListController = VendorListController.to;
  vendorListController.searchedText= data;
  vendorListController.vendorList = VendorListRepository.searchVendor(data: data);
  vendorListController.update();
}