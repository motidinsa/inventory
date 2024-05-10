import 'package:get/get.dart';



import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_model.dart';
import 'package:my_inventory/vendor_detail/controller/vendor_detail_controller.dart';

class EditVendorController extends GetxController {
  late VendorModel vendorModel;

  var isLoading = false;

  static EditVendorController get to => Get.find();

  @override
  void onInit() {
    VendorDatabaseModel vendorDatabaseModel =
        VendorDetailController.to.vendorDatabaseModel;
    vendorModel = VendorModel(
      name: vendorDatabaseModel.name,
      phoneNumber: vendorDatabaseModel.phoneNumber,
      contactPerson: vendorDatabaseModel.contactPerson,
      address: vendorDatabaseModel.address,
      city: vendorDatabaseModel.city,
      email: vendorDatabaseModel.email,
    );
    super.onInit();
  }
}
