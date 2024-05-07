import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';
import 'package:my_inventory/edit_customer/repository/edit_customer_repository.dart';

import '../../core/model/vendor/vendor_database_model.dart';
import '../../core/model/vendor/vendor_model.dart';
import '../../vendor_detail/controller/vendor_detail_controller.dart';
import '../../vendor_list/controller/vendor_list_controller.dart';
import '../../vendor_list/repository/vendor_list_repository.dart';
import '../controller/edit_vendor_controller.dart';
import '../repository/edit_vendor_repository.dart';

onEditVendorTextFieldChange({
  required String title,
  required String data,
}) {
  final VendorModel vendorModel = EditVendorController.to.vendorModel;
  if (title == vendorNameN) {
    vendorModel.name = data;
  } else if (title == phoneNumberN) {
    vendorModel.phoneNumber = nullIfEmpty(data);
  } else if (title == contactPersonN) {
    vendorModel.contactPerson = nullIfEmpty(data);
  } else if (title == addressN) {
    vendorModel.address = nullIfEmpty(data);
  } else if (title == cityN) {
    vendorModel.city = nullIfEmpty(data);
  } else if (title == emailN) {
    vendorModel.email = nullIfEmpty(data);
  }
}

String? getEditVendorData({required String title}) {
  VendorDatabaseModel vendorDatabaseModel =
      VendorDetailController.to.vendorDatabaseModel;
  String? data;
  if (title == vendorNameN) {
    data = vendorDatabaseModel.name;
  } else if (title == phoneNumberN) {
    data = vendorDatabaseModel.phoneNumber;
  } else if (title == contactPersonN) {
    data = vendorDatabaseModel.contactPerson;
  } else if (title == addressN) {
    data = vendorDatabaseModel.address;
  } else if (title == cityN) {
    data = vendorDatabaseModel.city;
  } else if (title == emailN) {
    data = vendorDatabaseModel.email;
  }
  return data;
}

onEditVendorSaveButtonPressed() async {
  EditVendorController editVendorController = EditVendorController.to;
  editVendorController.isLoading = true;
  editVendorController.update();
  try {
    if (isVendorEdited()) {
      await EditVendorRepository.editVendor();
      VendorListController vendorListController = VendorListController.to;
      vendorListController.vendorList = VendorListRepository.searchVendor(
          data: vendorListController.searchedText);
      vendorListController.update();
      VendorDetailController.to.update();

      showSnackbar(message: successfullyEditedN);
    } else {
      showSnackbar(
          message: noChangesMadeN, backgroundColor: Colors.grey.shade800);
    }
    Get.back();
  } on Exception {
    showSnackbar(message: someErrorOccurredN);
  } finally {
    editVendorController.isLoading = false;
    editVendorController.update();
  }
}

bool isVendorEdited() {
  VendorDatabaseModel vendorDatabaseModel =
      VendorDetailController.to.vendorDatabaseModel;
  VendorModel vendorModel = EditVendorController.to.vendorModel;
  return vendorDatabaseModel.name != vendorModel.name.trim() ||
      vendorDatabaseModel.phoneNumber != vendorModel.phoneNumber?.trim() ||
      vendorDatabaseModel.contactPerson != vendorModel.contactPerson?.trim() ||
      vendorDatabaseModel.address != nullIfEmpty(vendorModel.address?.trim()) ||
      vendorDatabaseModel.city != nullIfEmpty(vendorModel.city?.trim()) ||
      vendorDatabaseModel.email != nullIfEmpty(vendorModel.email?.trim());
}
