import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';

class EditVendorController extends GetxController {
  final VendorDatabaseModel vendorDatabaseModel;

  EditVendorController({required this.vendorDatabaseModel});

  late Rx<VendorModel> vendorInfo;
  final AppController appController = Get.find();
  var isLocalSaveLoading = false.obs;
  var isOnlineSaveLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  static EditVendorController get to => Get.find();
  @override
  void onInit() {
    appController.currentPages.add(editVendorN);
    vendorInfo = VendorModel(
      name: vendorDatabaseModel.name,
      phoneNumber: vendorDatabaseModel.phone,
      address: vendorDatabaseModel.address,
      city: vendorDatabaseModel.city,
      email: vendorDatabaseModel.email,
      contactPerson: vendorDatabaseModel.contactPerson,
    ).obs;
    super.onInit();
  }

  onEditVendorSaveButtonPressed() async {
    isLocalSaveLoading(true);  final Isar isar = Get.find();
    // Future.delayed(const Duration(seconds: 3),() => isLocalSaveLoading(false),);
    await isar.writeTxn(() async {
      final dbVendor =
      await isar.vendorDatabaseModels.get(vendorDatabaseModel.id);
      dbVendor?.name = vendorInfo.value.name;
      dbVendor?.phone = vendorInfo.value.phoneNumber;
      dbVendor?.address = vendorInfo.value.address;
      dbVendor?.city = vendorInfo.value.city;
      dbVendor?.email = vendorInfo.value.email;
      dbVendor?.contactPerson = vendorInfo.value.contactPerson;
      dbVendor?.lastModifiedByUserId = AppController.to.userId.value;
      dbVendor?.lastModifiedDate = DateTime.now();
      await isar.vendorDatabaseModels.put(dbVendor!);
    });
    VendorListController.to.vendorList(isar.vendorDatabaseModels
        .filter()
        .nameContains(VendorListController.to.searchedText.value)
        .findAllSync());
    // if (productInfo.value.localImagePath != null) {
    //   try {
    //     await Gal.putImage(productInfo.value.localImagePath!,
    //         album: appNameN);
    //     File(productInfo.value.localImagePath!).delete();
    //   } on GalException catch (e) {
    //     log(e.type.message);
    //   }
    // }
    isLocalSaveLoading(false);

    Get.back();
    Get.back();
  }
}
