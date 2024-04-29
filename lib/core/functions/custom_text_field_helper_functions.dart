import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/name_constants.dart';
import '../routes/route_names.dart';

titleToHint({String? title}) {
  String? value;
  if (title == productN) {
    value = enterProductNameN;
  } else if (title == descriptionN) {
    value = writeYourDescriptionN;
  } else if ([
    categoryN,
    RouteName.sales,
    RouteName.purchase,
    selectN,
    fromN,
    toN
  ].contains(title)) {
    value = selectN;
  } else if (title == productIdN) {
    value = optionalN;
  } else if (title == uomSN) {
    value = selectItemN;
  } else if (title == productListN) {
    value = searchByproductNameN;
  } else if (title == customerListN) {
    value = searchByCustomerNameN;
  } else if (title == vendorListN) {
    value = searchByVendorNameN;
  } else if (title == searchProductsN) {
    value = searchByproductNameN;
  } else if (title == selectCategoryN) {
    value = searchByCategoryNameN;
  } else if (title == selectUomSN) {
    value = searchUomSN;
  } else if (title == searchCustomersN) {
    value = searchByCustomerNameN;
  } else if (title == searchVendorsN) {
    value = searchByVendorNameN;
  }
  return value;
}

hasOptionItems({String? title}) {
  var itemsWithOption = [
    categoryN,
    uomSN,
    RouteName.sales,
    RouteName.purchase,
    selectN,
  ];
  return itemsWithOption.contains(title);
}

isReadOnlyTitle({String? title}) {
  var itemsWithOption = [
    categoryN,
    uomSN,
    RouteName.sales,
    RouteName.purchase,
    selectN,
    fromN,
    toN,
    creditN
  ];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [
    productN,
    descriptionN,
    searchProductsN,
    productListN,
    selectCategoryN,
    selectUomSN,
    discountN,
    categoryNameN,
    uomNameN,
    customerNameN,
    vendorNameN,
    contactPersonN,
    phoneNumberN,
    addressN,
    cityN,
    emailN,
    customerListN,
    vendorListN,
    searchCustomersN,
    searchVendorsN,
    toN,
    fromN,
    if ([addProductN, editProductN].contains(Get.currentRoute)) costN,
    priceN,
    productIdN
  ];
  return !items.contains(title);
}

maxPadding({String? title}) {
  var items = [
    vendorNameN,
    contactPersonN,
    customerNameN,
    phoneNumberN,
    addressN,
    cityN,
    emailN,
  ];
  return !items.contains(title);
}

hasPaymentOptionPadding({String? title}) {
  var items = [cashN, transferN, creditN];
  return items.contains(title);
}

hasSuffixIcon({String? title}) {
  var items = [quantityOnHandN, reorderQuantityN];
  return items.contains(title);
}

Icon titleToIcon({
  required String title,
}) {
  IconData? iconData;
  if ([vendorNameN, companyNameN].contains(title)) {
    iconData = Icons.corporate_fare_rounded;
  } else if ([customerNameN, contactPersonN, firstNameN, lastNameN]
      .contains(title)) {
    iconData = Icons.person_outline;
  } else if (title == phoneNumberN) {
    iconData = Icons.call_outlined;
  } else if (title == addressN) {
    iconData = Icons.location_on_outlined;
  } else if (title == cityN) {
    iconData = Icons.location_city_outlined;
  } else if (title == emailN) {
    iconData = Icons.mail_outline_rounded;
  } else if (title == dateN) {
    iconData = Icons.calendar_month_outlined;
  }
  return Icon(
    iconData,
    size: 26,
    color: Colors.grey.shade700,
  );
}

String titleToLabel({
  required String title,
}) {
  late String labelText;
  if (Get.currentRoute == RouteName.signUp && title == emailN) {
    labelText = '$emailN ($optionalN)';
  } else {
    labelText = title;
  }
  return labelText;
}

hasSearchIcon({String? title}) {
  var items = [
    productListN,
    searchProductsN,
    selectCategoryN,
    selectUomSN,
    customerListN,
    vendorListN,
    searchCustomersN,
    searchVendorsN
  ];
  return items.contains(title);
}
