import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

import '../controller/add_product_controller.dart';

titleToHint({String? title}) {
  var titleToHint = {
    productN(): enterProductNameN(),
    descriptionN(): writeYourDescriptionN(),
    categoryN(): selectItemN(),
    productIdN(): optionalN(),
    uomN(): selectItemN(),
  };
  return titleToHint[title];
}

hasOption({String? title}) {
  var itemsWithOption = [categoryN(), uomN()];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [productN(), descriptionN()];
  return !items.contains(title);
}

hasPrefix({String? title}) {
  var items = [costN(), priceN()];
  return items.contains(title);
}

hasSuffix({String? title}) {
  var items = [quantityOnHandN(), reorderQuantityN()];
  return items.contains(title);
}

onAddProductFocusChange({
  required String title,
  required bool hasFocus,
  required String data,
}) {
  if (!hasFocus) {
    AddProductController addProductController = Get.find();
    addProductController.productInfo.update((product) {
      if (title == productN()) {
        product?.name = data;
      } else if (title == descriptionN()) {
        product?.description = data;
      }
    });
  }
}
