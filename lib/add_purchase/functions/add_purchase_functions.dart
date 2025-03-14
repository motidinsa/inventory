import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/add_purchase/controller/add_purchase_controller.dart';
import 'package:inventory/add_purchase/repository/add_purchase_repository.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/vendor/vendor_database_model.dart';
import 'package:inventory/core/model/purchase/purchase_model.dart';
import 'package:inventory/core/routes/route_names.dart';

import 'package:inventory/core/functions/helper_functions.dart';

import '../../core/controller/app_controller.dart';
import '../../core/ui/alert_dialog/alert_dialog_option_select.dart';

onPurchaseAddIconPressed() {
  unFocus();
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  addPurchaseController.purchaseModels.add(
    PurchaseModel(
      productId: '',
      productName: '',
      quantity: '',
      cost: '',
      totalAmount: 0,
    ),
  );
  addPurchaseController.update();
}

String? onPurchaseTitleToData({required String title, int? index}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == RouteName.addPurchase) {
    return addPurchaseController.purchaseModels[index!].productName;
  }else if (title == vendorN) {
    return addPurchaseController.vendorDatabaseModel?.name;
  }else if (title == costN) {
    return addPurchaseController.purchaseModels[index!].cost;
  }
  return null;
}

onPurchaseTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == searchVendorsN) {
    addPurchaseController.searchVendorFoundResult =
        AddPurchaseRepository.searchVendor(data: data);
  } else {
    PurchaseModel purchase = addPurchaseController.purchaseModels[index!];
    if (title == searchProductsN) {
      final Isar isar = Get.find();
      addPurchaseController.searchProductFoundResult = isar
          .productDatabaseModels
          .filter()
          .productNameContains(data, caseSensitive: false)
          .findAllSync();
    } else if (title == qtyN) {
      if (data.isEmpty) {
        purchase.quantity = '';
        purchase.totalAmount = 0;
      } else {
        purchase.quantity = data;
        if (isNumeric(purchase.quantity) && isNumeric(purchase.cost)) {
          purchase.totalAmount =
              double.parse(data) * double.parse(purchase.cost);
        }
      }
      addPurchaseController.update();
    } else if (title == costN) {
      if (data.isEmpty) {
        purchase.cost = '';
        purchase.totalAmount = 0;
      } else {
        purchase.cost = data;
        if (isNumeric(purchase.quantity) && isNumeric(purchase.cost)) {
          purchase.totalAmount =
              double.parse(data) * double.parse(purchase.quantity);
        }
      }
    }
  }
  addPurchaseController.update();
}

onPurchaseTextFieldPressed({
  required String title,
  int? index,
}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == RouteName.addPurchase) {
    addPurchaseController.searchProductFoundResult =
        AddPurchaseRepository.getAllProduct();
    Get.dialog(GetBuilder<AddPurchaseController>(
      builder: (context) {
        return AlertDialogOptionSelect(
          title: searchProductsN,
          listIndex: index,
        );
      }
    )).then((value) {
      unFocus();
      addPurchaseController.searchProductFoundResult.clear();
    });
  } else if (title == vendorN) {
    addPurchaseController.searchVendorFoundResult =
        AddPurchaseRepository.getAllVendors();
    Get.dialog(GetBuilder<AddPurchaseController>(
      builder: (context) {
        return AlertDialogOptionSelect(
          title: searchVendorsN,
        );
      }
    )).then((value) {
      unFocus();
      addPurchaseController.searchVendorFoundResult.clear();
    });
  }
}

getPurchaseAlertDialogOptionId({required String title, required int index}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == searchProductsN) {
    return addPurchaseController.searchProductFoundResult[index].id;
  } else if (title == searchVendorsN) {
    return addPurchaseController.searchVendorFoundResult[index].id;
  }
}

onPurchaseSearchProductAlertDialogOptionSelect(
    {int? listIndex, int? index, required String title}) {
  final AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == searchProductsN) {
    ProductDatabaseModel productDatabaseModel =
        addPurchaseController.searchProductFoundResult[index!];
    PurchaseModel purchaseModel = addPurchaseController.purchaseModels[listIndex!];
    purchaseModel.productId = productDatabaseModel.productId;
    purchaseModel.productName = productDatabaseModel.productName;
    purchaseModel.cost = emptyIfDefaultValue(
        getFormattedNumberWithoutComa(productDatabaseModel.cost));
    if (purchaseModel.quantity.isNotEmpty && isNumeric(purchaseModel.quantity)) {
      purchaseModel.totalAmount =
          double.parse(purchaseModel.quantity) * productDatabaseModel.cost;
    }
  } else if (title == searchVendorsN) {
    VendorDatabaseModel vendorDatabaseModel =
    addPurchaseController.searchVendorFoundResult[index!];
    addPurchaseController.vendorDatabaseModel= vendorDatabaseModel;

  }
  addPurchaseController.update();
  Get.back();
}
onAddPurchaseSaveButtonPressed() async {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  addPurchaseController.isSubmitButtonPressed=true;
  addPurchaseController.update();
  if (AppController.to.formKey.currentState!.validate()) {
    addPurchaseController.isLoading = true;
    addPurchaseController.update();
    try {
      await AddPurchaseRepository.addPurchase();
      showSnackbar(message: successfullyAddedPurchaseN, success: true);
      Get.back();
    } on Exception {
      showSnackbar(message: someErrorOccurredN, success: false);
    } finally {
      addPurchaseController.isLoading = false;
      addPurchaseController.update();
    }
  }else{
    showSnackbar(message: pleaseFillTheRequiredFieldN);
  }

}