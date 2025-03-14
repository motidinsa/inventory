import 'package:get/get.dart';

import 'package:inventory/core/model/vendor/vendor_database_model.dart';
import 'package:inventory/vendor_list/repository/vendor_list_repository.dart';

class VendorListController extends GetxController {
  String searchedText = '';
  bool? isEmpty;
  List<VendorDatabaseModel> vendorList = [];

  static VendorListController get to => Get.find();

  @override
  void onInit() {
    vendorList = VendorListRepository.getAllVendors();
    if(vendorList.isEmpty){
      isEmpty = true;
    }
    super.onInit();
  }
}
