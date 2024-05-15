import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/edit_customer/functions/edit_customer_functions.dart';
import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';
import 'package:my_inventory/edit_vendor/functions/edit_vendor_functions.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:my_inventory/core/functions/report/report_functions.dart';

import '../../../add_purchase/functions/add_purchase_functions.dart';

String? titleToData({required String title, int? index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return onSalesTitleToData(title: title, index: index);
  } else if (currentRoute == RouteName.addProduct) {
    return onAddProductTitleToData(title: title);
  } else if (currentRoute == RouteName.addPurchase) {
    return onPurchaseTitleToData(title: title, index: index);
  } else if (currentRoute == RouteName.editProduct) {
    return getEditProductData(title: title);
  } else if (currentRoute == RouteName.editCustomer) {
    return getEditCustomerData(title: title);
  } else if (currentRoute == RouteName.editVendor) {
    return getEditVendorData(title: title);
  } else if ([salesReportN, purchaseReportN, paymentReportN]
      .contains(currentRoute)) {
    return getReportSelectedDate(title: title);
  }
  return null;
}

String? titleToHint({String? title}) {
  String? value;
  if (title == productN) {
    value = enterProductNameN;
  } else if (title == descriptionN) {
    value = writeYourDescriptionN;
  } else if ([
    categoryN,
    RouteName.sales,
    RouteName.addPurchase,
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

Icon? titleToIcon({
  required String title,
}) {
  IconData? iconData;
  if ([vendorNameN,vendorN, companyNameN].contains(title)) {
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
          size: 24,
          color: Colors.grey.shade700,
        )
      : null;
}

EdgeInsetsGeometry? getTextFieldPadding({required String title}) {
  String currentRoute = Get.currentRoute;
  if([RouteName.addPurchase,RouteName.sales].contains(currentRoute)){
    return const EdgeInsets.only(left: 15, right: 10,top: 6,bottom: 6);
  }
  else if ([
    productN,
    descriptionN,
    categoryN,
    productIdN,
    uomSN,
    quantityOnHandN,
    reorderQuantityN,
    imageN,
    if([RouteName.addProduct].contains(Get.currentRoute))costN,
    priceN,
    categoryNameN,
  ].contains(title)) {
    return const EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10);
  }
  return null;
}

bool hasOptionItems({String? title}) {
  String currentRoute = Get.currentRoute;
  var itemsWithOption = [
    categoryN,
    uomSN,
    RouteName.sales,
    // RouteName.purchase,
    if(currentRoute == RouteName.addPurchase)vendorN,
    selectN,
  ];
  return itemsWithOption.contains(title);
}

bool isReadOnlyTitle({String? title}) {
  String currentRoute = Get.currentRoute;
  var itemsWithOption = [
    categoryN,
    uomSN,
    RouteName.sales,
    RouteName.addPurchase,if(currentRoute == RouteName.addPurchase)vendorN,
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
    suffixWidget = Padding(
      padding: const EdgeInsets.only(right: 8,left: 5),
      child: const Icon(
        Icons.arrow_drop_down_rounded,
        color: Colors.teal,
        size: 24,
      ),
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
    suffixText = AddProductController.to.productModel.unitOfMeasurementName;
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
  return const EdgeInsets.symmetric(horizontal: 30, vertical: 10);
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

String titleToLabel({
  required String title,
}) {
  late String labelText;
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.signUp && title == emailN) {
    labelText = '$emailN ($optionalN)';
  }else if([RouteName.addPurchase,RouteName.sales].contains(title)) {
    labelText = productN;
  }else
 {
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

TextInputType getKeyboardType({required String title}) {
  final List<String> numberKeyboardLists = [
    costN,
    priceN,
    quantityOnHandN,
    reorderQuantityN,
    qtyN
  ];
  if (numberKeyboardLists.contains(title)) {
    return TextInputType.number;
  } else if (title == phoneNumberN) {
    return TextInputType.phone;
  } else if (title == emailN) {
    return TextInputType.emailAddress;
  }
  return TextInputType.name;
}
