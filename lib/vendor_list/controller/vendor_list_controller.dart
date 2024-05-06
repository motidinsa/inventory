import 'package:get/get.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

import '../../core/model/vendor/vendor_database_model.dart';
import '../repository/vendor_list_repository.dart';

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
