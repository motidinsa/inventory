import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

validateInput({
  required String title,
  required String data,
}) {
  List<String> nonEmptyTitles = [
    productN,
    categoryNameN,
    uomNameN,
    quantityN,
    purchaseN,
    salesN,
    customerNameN,
    fromN,
    toN,
    companyNameN,
    firstNameN,
    lastNameN,
    phoneNumberN,
  ];
  List<String> numberKeyboardLists = [
    costN,
    priceN,
    quantityOnHandN,
    reorderQuantityN,
    quantityN,
    purchaseN,
  ];
  if (nonEmptyTitles.contains(title)) {
    if (data.trim().isEmpty) {
      return requiredN;
    } else if ([quantityN].contains(title)) {
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
