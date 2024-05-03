import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../add_product/controller/add_product_controller.dart';
import '../../../edit_product/controller/edit_product_controller.dart';
import '../../constants/name_constants.dart';
import '../../routes/route_names.dart';

String? titleToHint({String? title}) {
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

EdgeInsetsGeometry? getTextFieldPadding() {
  return null;
}

bool hasOptionItems({String? title}) {
  var itemsWithOption = [
    categoryN,
    uomSN,
    RouteName.sales,
    RouteName.purchase,
    selectN,
  ];
  return itemsWithOption.contains(title);
}

bool isReadOnlyTitle({String? title}) {
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

bool minimizePadding({String? title}) {
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
    // customerListN,
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

TextAlign getTextAlign({required String title}) {
  List<String> centerTextAlignItems = [];
  if (centerTextAlignItems.contains(title)) {
    return TextAlign.center;
  }
  return TextAlign.start;
}

Widget? getSuffixWidget({required String title}) {
  Widget? suffixWidget;
  if (hasOptionItems(title: title)) {
    suffixWidget = const Icon(
      Icons.arrow_drop_down_rounded,
      color: Colors.teal,
      size: 24,
    );
  } else if (hasSuffixText(title: title)) {
    suffixWidget = Padding(
      padding: const EdgeInsets.only(top: 11, bottom: 10, left: 10, right: 15),
      child: Text(
        getSuffixText(),
        style: const TextStyle(fontSize: 16),
      ),
    );
  } else if (hasSearchIcon(title: title)) {
    suffixWidget = IconButton(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      onPressed: () {},
      icon: Icon(
        Icons.search_rounded,
        size: 26,
        color: Colors.grey.shade700,
      ),
    );
  }
  return suffixWidget;
}

String getSuffixText() {
  String currentRoute = Get.currentRoute;
  String suffixText = '';
  if (currentRoute == RouteName.addProduct) {
    suffixText =
        AddProductController.to.productInfo.value.unitOfMeasurementName;
  } else if (currentRoute == RouteName.editProduct) {
    suffixText =
        EditProductController.to.productInfo.value.unitOfMeasurementName;
  }
  return suffixText;
}

double getBorderWidth({required String title}) {
  double borderWidth = 1.5;
  if (hasOptionItems(title: title)) {
    borderWidth = 2;
  }
  return borderWidth;
}

bool maxPadding({String? title}) {
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

EdgeInsets getContentPadding({required String title}) {
  double horizontalPadding = 0;
  double verticalPadding = 0;

  if (paymentModeTitles(title: title)) {
    horizontalPadding = 20;
    verticalPadding = 10;
  } else if (hasMinimumPadding(title: title)) {
    horizontalPadding = 30;
    verticalPadding = 10;
  } else {
    horizontalPadding = 20;
    verticalPadding = 20;
  }
  return EdgeInsets.symmetric(
      horizontal: horizontalPadding, vertical: verticalPadding);
}

bool paymentModeTitles({String? title}) {
  var items = [cashN, transferN, creditN];
  return items.contains(title);
}

bool hasMinimumPadding({required String title}) {
  List<String> items = [
    customerListN,
    vendorListN,
    productListN,
  ];
  return items.contains(title);
}

bool hasSuffixText({String? title}) {
  var items = [quantityOnHandN, reorderQuantityN];
  return items.contains(title);
}

Icon? titleToIcon({
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
  return iconData != null
      ? Icon(
          iconData,
          size: 26,
          color: Colors.grey.shade700,
        )
      : null;
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

bool hasSearchIcon({String? title}) {
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
