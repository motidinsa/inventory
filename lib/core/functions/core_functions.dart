import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

bool isNumeric(String input) {
  final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
  return numberRegExp.hasMatch(input);
}

double getValidNumValue(String data) {
  if (isNumeric(data)) {
    return double.parse(data);
  }
  return 0;
}

getFormattedNumber(double num) {
  return NumberFormat("#,###.##").format(num);
}

onSaveButtonPressed({required String redirectFrom}) async {
  AppController appController = Get.find();
  await unFocus();
  if (appController.formKey.currentState!.validate()) {
    if (redirectFrom == addProductN()) {
      AddProductController addProductController = Get.find();
      addProductController.onAddProductSaveButtonPressed();
    } else if (redirectFrom == salesN()) {
      SalesController salesController = Get.find();
      salesController.saveSalesProductToDB();
    } else if (redirectFrom == purchaseN()) {
      PurchaseController purchaseController = Get.find();
      purchaseController.savePurchaseProductToDB();
    }
    Get.back();
  }
}

titleToData({required String title, required String currentPage, int? index}) {
  String? value;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    if (title == salesN()) {
      value = salesController.salesModels[index!].value.productName;
    } else if (title == quantityN()) {
      value = emptyIfDefaultValue(
          salesController.salesModels[index!].value.quantity);
    } else if (title == discountN()) {
      value = salesController.discount.value;
    } else if (title == searchProductsN()) {
      value = salesController.emptyString.value;
    } else if (title == defaultN) {
      value = salesController.emptyString.value;
    }
  } else if (currentPage == addProductN()) {
    AddProductController addProductController = Get.find();
    var items = {
      categoryN(): addProductController.productInfo.value.categoryName,
      uomN(): addProductController.productInfo.value.unitOfMeasurement,
    };
    return items[title];
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    if (title == purchaseN()) {
      value = purchaseController.purchaseModels[index!].value.productName;
    } else if (title == quantityN()) {
      value = purchaseController.purchaseModels[index!].value.quantity;
    } else if (title == priceN()) {
      value = purchaseController.purchaseModels[index!].value.price;
    } else if (title == discountN()) {
      value = purchaseController.discount.value;
    } else if (title == searchProductsN()) {
      value = purchaseController.emptyString.value;
    } else if (title == defaultN) {
      value = purchaseController.emptyString.value;
    }
  } else if (currentPage == productListN()) {
    ProductListController productListController = Get.find();
    value = productListController.emptyValue.value;
  }
  return value;
}

emptyIfNull(String? data) {
  if (data != null) {
    return data;
  }
  return '';
}

emptyIfDefaultValue(var data) {
  var emptyLists = [0, '0.0'];
  if (!emptyLists.contains(data)) {
    return data.toString();
  }
  return '';
}

nullIfEmpty(String? data) {
  if (data != null) {
    if (data.isEmpty) {
      return null;
    }
  }
  return data;
}

onAddIconPressed({required String currentPage}) {
  if (currentPage == salesN()) {
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    purchaseController.addPurchaseProduct();
  } else if (currentPage == addProductN()) {}
}

onAddImagePressed(
    {required BuildContext context,
    required String currentPage,
    String? productId}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialogOptionSelect(
        currentPage: currentPage,
        title: selectSourceN,
        productId: productId,
      );
    },
  ).then(
    (value) async {
      await unFocus();
    },
  );
}

onImageSourceButtonPressed(
    {required String currentPage,
    required String sourceLocation,
    String? productId}) async {
  final ImagePicker picker = ImagePicker();

  await picker
      .pickImage(
          source: sourceLocation == galleryN
              ? ImageSource.gallery
              : ImageSource.camera)
      .then((value) async {
    if (currentPage == addProductN()) {
      AddProductController addProductController = Get.find();
      addProductController.productInfo.update((val) {
        val?.localImagePath = value?.path;
      });
    } else if (productId != null) {
      var productBox = Hive.box<ProductDatabaseModel>('products');
      ProductDatabaseModel? currentProduct = productBox.get(productId);
      currentProduct!.localImagePath = value?.path;
      productBox.put(productId, currentProduct);
    }

    Get.back();
  });
}

titleToIcon({required String title}) {
  IconData? iconData;
  if (title == dateN) {
    iconData = Icons.calendar_month_rounded;
  } else if (title == refN) {
    // iconData = Icons.contra;
  } else if (title == telN) {
    iconData = Icons.phone;
  } else if (title == emailN()) {
    iconData = Icons.email_outlined;
  }
  return Icon(iconData, color: Colors.grey.shade600);
}

getKeyboardType({required String title}) {
  final List<String> numberKeyboardLists = [
    costN(),
    priceN(),
    quantityOnHandN(),
    reorderQuantityN(),
    quantityN()
  ];
  if (numberKeyboardLists.contains(title)) {
    return TextInputType.number;
  } else if (title == phoneNumberN()) {
    return TextInputType.phone;
  } else if (title == emailN()) {
    return TextInputType.emailAddress;
  }
  return TextInputType.name;
}

mapValidation({
  required String title,
  required String data,
}) {
  List<String> nonEmptyTitles = [
    productN(),
    categoryN(),
  ];
  List<String> numberKeyboardLists = [
    costN(),
    priceN(),
    quantityOnHandN(),
    reorderQuantityN(),
    quantityN()
  ];
  if (nonEmptyTitles.contains(title)) {
    if (data.isEmpty) {
      return 'This is required field';
    }
  } else if (numberKeyboardLists.contains(title)) {
    if (data.isNotEmpty && !isNumeric(data)) {
      return 'Invalid number';
    }
  }
  return null;
}
