import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

import '../../core/constants/name_constants.dart';
import '../../core/controller/app_controller.dart';
import '../../core/model/customer/customer_database_model.dart';
import '../../core/model/customer/customer_model.dart';
import '../../customer_list/controller/customer_list_controller.dart';
import '../../main.dart';

class EditCustomerController extends GetxController {
  final CustomerDatabaseModel customerDatabaseModel;

  EditCustomerController({required this.customerDatabaseModel});

  late Rx<CustomerModel> customerInfo;
  final AppController appController = Get.find();
  var emptyText = ''.obs;
  var isLocalSaveLoading = false.obs;
  var isOnlineSaveLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  static EditCustomerController get to => Get.find();
  @override
  void onInit() {
    appController.currentPages.add(editCustomerN);
    customerInfo = CustomerModel(
      name: customerDatabaseModel.name,
      phoneNumber: customerDatabaseModel.phone,
      address: customerDatabaseModel.address,
      city: customerDatabaseModel.city,
      email: customerDatabaseModel.email,
    ).obs;
    super.onInit();
  }

  onEditCustomerSaveButtonPressed() async {
    isLocalSaveLoading(true);
    // Future.delayed(const Duration(seconds: 3),() => isLocalSaveLoading(false),);
    await isar.writeTxn(() async {
      final dbCustomer =
          await isar.customerDatabaseModels.get(customerDatabaseModel.id);
      dbCustomer?.name = customerInfo.value.name;
      dbCustomer?.phone = customerInfo.value.phoneNumber;
      dbCustomer?.address = customerInfo.value.address;
      dbCustomer?.city = customerInfo.value.city;
      dbCustomer?.email = customerInfo.value.email;
      dbCustomer?.lastModifiedByUserId = AppController.to.userId.value;
      dbCustomer?.lastModifiedDate = DateTime.now();
      await isar.customerDatabaseModels.put(dbCustomer!);
    });
    CustomerListController.to.customerList(isar.customerDatabaseModels
        .filter()
        .nameContains(CustomerListController.to.searchedText.value)
        .findAllSync());
    // if (productInfo.value.localImagePath != null) {
    //   try {
    //     await Gal.putImage(productInfo.value.localImagePath!,
    //         album: appNameN());
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
