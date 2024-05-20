import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';

import 'package:my_inventory/vendor_detail/controller/vendor_detail_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/packages/custom_date_picker.dart';

import '../../../add_purchase/controller/add_purchase_controller.dart';

onProfileEditPressed() {
  if (Get.currentRoute == RouteName.customerDetail) {
    Get.toNamed(RouteName.editCustomer);
  } else if (Get.currentRoute == RouteName.vendorDetail) {
    Get.toNamed(RouteName.editVendor);
  }
}

onSingleProfileDetailPressed({required int index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.customerList) {
    Get.toNamed(RouteName.customerDetail,
        arguments: CustomerListController.to.customerList[index]);
  } else if (currentRoute == RouteName.vendorList) {
    Get.toNamed(RouteName.vendorDetail,
        arguments: VendorListController.to.vendorList[index]);
  }
}

onProfileAddPressed() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.customerList) {
    Get.toNamed(RouteName.addCustomer);
  } else if (currentRoute == RouteName.vendorList) {
    Get.toNamed(RouteName.addVendor);
  }
}

String? getProfileId() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return AddSalesController.to.customerDatabaseModel?.customerId;
  }
  return null;
}

String? getProfilePhone() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return AddSalesController.to.customerDatabaseModel?.phoneNumber;
  } else if (currentRoute == RouteName.addPurchase) {
    return AddPurchaseController.to.vendorDatabaseModel?.phoneNumber;
  }
  return null;
}

String? getProfileAddress() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return AddSalesController.to.customerDatabaseModel?.address;
  } else if (currentRoute == RouteName.addPurchase) {
    return AddPurchaseController.to.vendorDatabaseModel?.address;
  }
  return null;
}

String? getContactPerson() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addPurchase) {
    return AddPurchaseController.to.vendorDatabaseModel?.contactPerson;
  }
  return null;
}

onProfileCancelPressed() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    AddSalesController.to.customerDatabaseModel = null;
    AddSalesController.to.update();
  }
}

onProfileDatePressed() {
  String currentRoute = Get.currentRoute;
  if ([RouteName.addSales, RouteName.addPurchase].contains(currentRoute)) {
    showCustomDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
  }
}

String getProfileDetailDateAdded() {
  DateTime? date;
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.customerDetail) {
    date = CustomerDetailController.to.customerDatabaseModel.dateCreated;
  } else if (currentRoute == RouteName.vendorDetail) {
    date = VendorDetailController.to.vendorDatabaseModel.dateCreated;
  }
  if (date != null) return DateFormat("MMM d, y").format(date);
  return '';
}

List<String> profileTitles() {
  if (Get.currentRoute == RouteName.customerDetail) {
    return [customerNameN, phoneNumberN, addressN, cityN, emailN];
  } else if (Get.currentRoute == RouteName.vendorDetail) {
    return [vendorNameN, phoneNumberN, contactPersonN, addressN, cityN, emailN];
  }
  return [];
}

String? getProfileTitleToData({required String title}) {
  String currentRoute = Get.currentRoute;
  String? value;
  if (currentRoute == RouteName.customerDetail) {
    CustomerDatabaseModel customerDatabaseModel =
        CustomerDetailController.to.customerDatabaseModel;
    if (title == customerNameN) {
      value = customerDatabaseModel.name;
    } else if (title == phoneNumberN) {
      value = customerDatabaseModel.phoneNumber;
    } else if (title == addressN) {
      value = customerDatabaseModel.address;
    } else if (title == cityN) {
      value = customerDatabaseModel.city;
    } else if (title == emailN) {
      value = customerDatabaseModel.email;
    }
  } else if (currentRoute == RouteName.vendorDetail) {
    VendorDatabaseModel vendorDatabaseModel =
        VendorDetailController.to.vendorDatabaseModel;

    if (title == vendorNameN) {
      value = vendorDatabaseModel.name;
    } else if (title == phoneNumberN) {
      value = vendorDatabaseModel.phoneNumber;
    } else if (title == contactPersonN) {
      value = vendorDatabaseModel.contactPerson;
    } else if (title == addressN) {
      value = vendorDatabaseModel.address;
    } else if (title == cityN) {
      value = vendorDatabaseModel.city;
    } else if (title == emailN) {
      value = vendorDatabaseModel.email;
    }
  }

  return value;
}

bool customerHasCredit() {
  String currentRoute = Get.currentRoute;
  bool value = false;
  if (currentRoute == RouteName.customerDetail &&
      CustomerDetailController.to.customerDatabaseModel.totalCreditAmount !=
          null) {
    value =
        CustomerDetailController.to.customerDatabaseModel.totalCreditAmount! >
            0;
  }
  return value;
}
