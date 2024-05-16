import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

validateInput({
  required String title,
  required String data,
}) {
  String currentRoute = Get.currentRoute;
  List<String> nonEmptyTitles = [
    productN,
    categoryNameN,
    uomNameN,
    qtyN,
    purchaseN,
    salesN,
    customerNameN,vendorNameN,
    fromN,
    toN,
    companyNameN,
    firstNameN,
    lastNameN,
    if(currentRoute == RouteName.signUp)phoneNumberN,
    if(currentRoute == RouteName.addPurchase)...[RouteName.addPurchase,costN],
  ];
  List<String> numberKeyboardLists = [
    costN,
    priceN,
    quantityOnHandN,
    reorderQuantityN,
    qtyN,
    purchaseN,
  ];
  if (nonEmptyTitles.contains(title)) {
    if (data.trim().isEmpty) {
      return requiredN;
    } else if ([qtyN].contains(title)) {
      if (!isNumeric(data)) {
        return invalidNumberN;
      }
    }
  } else if (numberKeyboardLists.contains(title)) {
    if (data.isNotEmpty && !isNumeric(data)) {
      return invalidNumberN;
    }
  }
  return null;
}
