import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';

import 'package:my_inventory/vendor_detail/controller/vendor_detail_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/packages/custom_date_picker.dart';

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
        arguments: [VendorListController.to.vendorList[index], index]);
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
  if (currentRoute == RouteName.sales) {
    return SalesController.to.customerId;
  }
  return null;
}

String? getProfilePhone() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return SalesController.to.customerPhone;
  } else if (currentRoute == RouteName.purchase) {
    return PurchaseController.to.vendorPhone;
  }
  return null;
}

String? getProfileAddress() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return SalesController.to.customerAddress;
  } else if (currentRoute == RouteName.purchase) {
    return PurchaseController.to.vendorAddress;
  }
  return null;
}

String? getContactPerson() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.purchase) {
    return PurchaseController.to.vendorContactPerson;
  }
  return null;
}

onProfileCancelPressed() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController.to.customerId = null;
    SalesController.to.customerName = '';
    SalesController.to.customerPhone = null;
    SalesController.to.customerAddress = null;
    SalesController.to.update();
  }
}

onProfileDatePressed() {
  String currentRoute = Get.currentRoute;
  if ([RouteName.sales, RouteName.purchase].contains(currentRoute)) {
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
  print(Get.arguments);
  // return Get.arguments[0].name;
  // return CustomerDetailController.to.customerDatabaseModel.name;
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.customerDetail) {
    CustomerDatabaseModel customerDatabaseModel =
        CustomerDetailController.to.customerDatabaseModel;
    if (title == customerNameN) {
      return customerDatabaseModel.name;
    } else if (title == phoneNumberN) {
      return customerDatabaseModel.phoneNumber;
    } else if (title == addressN) {
      return customerDatabaseModel.address;
    } else if (title == cityN) {
      return customerDatabaseModel.city;
    } else if (title == emailN) {
      return customerDatabaseModel.email;
    }
  } else if (currentRoute == RouteName.vendorDetail) {
    VendorDatabaseModel vendorDatabaseModel =
        VendorDetailController.to.vendorDatabaseModel;

    if (title == vendorNameN) {
      return VendorDetailController.to.vendorDatabaseModel.name;
    } else if (title == customerNameN) {
      print(Get.arguments);
      return 'CustomerDetailController.to.customerDatabaseModel.name';
    } else if (title == contactPersonN) {
      return VendorDetailController.to.vendorDatabaseModel.contactPerson;
    } else if (title == phoneNumberN) {
      return currentRoute == vendorDetailN
          ? VendorDetailController.to.vendorDatabaseModel.phone
          : CustomerDetailController.to.customerDatabaseModel.phoneNumber;
    } else if (title == addressN) {
      return currentRoute == vendorDetailN
          ? VendorDetailController.to.vendorDatabaseModel.address
          : CustomerDetailController.to.customerDatabaseModel.address;
    } else if (title == cityN) {
      return currentRoute == vendorDetailN
          ? VendorDetailController.to.vendorDatabaseModel.city
          : CustomerDetailController.to.customerDatabaseModel.city;
    } else if (title == emailN) {
      return currentRoute == vendorDetailN
          ? VendorDetailController.to.vendorDatabaseModel.email
          : CustomerDetailController.to.customerDatabaseModel.email;
    }
  }

  return null;
}

bool isProfileListEmpty() {
  String currentRoute = Get.currentRoute;
  bool value = false;
  if (currentRoute == RouteName.customerList) {
    value = CustomerListController.to.customerList.isEmpty;
  } else if (currentRoute == RouteName.vendorList) {
    value = VendorListController.to.vendorList.isEmpty;
  }
  return value;
}

String getProfileNoListName() {
  String currentRoute = Get.currentRoute;
  String value = '';
  if (currentRoute == RouteName.customerList) {
    value = noCustomerFoundN;
  } else if (currentRoute == RouteName.vendorList) {
    value = noVendorFoundN;
  }
  return value;
}

String getProfileNoListButtonText() {
  String currentRoute = Get.currentRoute;
  String value = '';
  if (currentRoute == RouteName.customerList) {
    value = addCustomerN;
  } else if (currentRoute == RouteName.vendorList) {
    value = addVendorN;
  }
  return value;
}

String getProfileMiniDetailName({required int index}) {
  String currentRoute = Get.currentRoute;
  String value = '';
  if (currentRoute == RouteName.customerList) {
    value = CustomerListController.to.customerList[index].name;
  } else if (currentRoute == RouteName.vendorList) {
    value = VendorListController.to.vendorList[index].name;
  }
  return value;
}

String getProfilePageName() {
  String currentRoute = Get.currentRoute;
  String value = '';
  if (currentRoute == RouteName.customerList) {
    value = customerListN;
  } else if (currentRoute == RouteName.vendorList) {
    value = vendorListN;
  }
  return value;
}

int getProfileListLength() {
  String currentRoute = Get.currentRoute;
  int length = 0;
  if (currentRoute == RouteName.customerList) {
    length = CustomerListController.to.customerList.length;
  } else if (currentRoute == RouteName.vendorList) {
    length = VendorListController.to.vendorList.length;
  }
  return length;
}
