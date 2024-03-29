import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';

import '../../../customer_detail/ui/customer_detail.dart';
import '../../../edit_customer/ui/edit_customer.dart';
import '../../../edit_vendor/ui/edit_vendor.dart';
import '../../../vendor_detail/controller/vendor_detail_controller.dart';
import '../../../vendor_detail/ui/vendor_detail.dart';

onProfileEditPressed() {
  if (AppController.to.currentPages.last == customerDetailN) {
    Get.to(() => EditCustomer(
          customerDatabaseModel:
              CustomerDetailController.to.customerDatabaseModel,
        ));
  } else {
    Get.to(() => EditVendor(
          vendorDatabaseModel: VendorDetailController.to.vendorDatabaseModel,
        ));
  }
}

onSingleProfileDetailPressed({required int index}) {
  unFocus();
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == customerListN) {
    Get.to(() => CustomerDetail(
          customerDatabaseModel: CustomerListController.to.customerList[index],
          index: index,
        ));
  } else if (currentPage == vendorListN) {
    Get.to(() => VendorDetail(
          vendorDatabaseModel: VendorListController.to.vendorList[index],
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
  } else if (currentPage == purchaseN()) {
    return PurchaseController.to.vendorPhone;
  }
  return null;
}

String? getProfileAddress() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    return SalesController.to.customerAddress;
  } else if (currentPage == purchaseN()) {
    return PurchaseController.to.vendorAddress;
  }
  return null;
}

String? getContactPerson() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == purchaseN()) {
    return PurchaseController.to.vendorContactPerson;
  }
  return null;
}

onProfileCancelPressed() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    SalesController.to.customerId = null;
    SalesController.to.customerName = '';
    SalesController.to.customerPhone = null;
    SalesController.to.customerAddress = null;
    SalesController.to.update();
  }
}

onProfileDatePressed() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value != null) {
        SalesController.to.salesDate = value;
        SalesController.to.update();
      }
    });
  }
}

String getProfileDetailDateAdded() {
  return DateFormat("MMM d, y").format(
      AppController.to.currentPages.last == customerDetailN
          ? CustomerDetailController.to.customerDatabaseModel.dateCreated
          : VendorDetailController.to.vendorDatabaseModel.dateCreated);
}

List<String> profileTitles() {
  return AppController.to.currentPages.last == customerDetailN
      ? [customerNameN, phoneNumberN(), addressN(), cityN(), emailN()]
      : [
          vendorNameN,
          phoneNumberN(),
          contactPersonN,
          addressN(),
          cityN(),
          emailN()
        ];
}

String? getProfileTitleToData({required String title}) {
  String currentPage = AppController.to.currentPages.last;
  if (title == vendorNameN) {
    return VendorDetailController.to.vendorDatabaseModel.name;
  } else if (title == customerNameN) {
    return CustomerDetailController.to.customerDatabaseModel.name;
  } else if (title == contactPersonN) {
    return VendorDetailController.to.vendorDatabaseModel.contactPerson;
  } else if (title == phoneNumberN()) {
    return currentPage == vendorDetailN
        ? VendorDetailController.to.vendorDatabaseModel.phone
        : CustomerDetailController.to.customerDatabaseModel.phone;
  } else if (title == addressN()) {
    return currentPage == vendorDetailN
        ? VendorDetailController.to.vendorDatabaseModel.address
        : CustomerDetailController.to.customerDatabaseModel.address;
  } else if (title == cityN()) {
    return currentPage == vendorDetailN
        ? VendorDetailController.to.vendorDatabaseModel.city
        : CustomerDetailController.to.customerDatabaseModel.city;
  } else if (title == emailN()) {
    return currentPage == vendorDetailN
        ? VendorDetailController.to.vendorDatabaseModel.email
        : CustomerDetailController.to.customerDatabaseModel.email;
  }
  return null;
}
