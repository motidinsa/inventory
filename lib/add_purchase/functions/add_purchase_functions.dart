import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_purchase/controller/add_purchase_controller.dart';
import 'package:my_inventory/add_purchase/repository/add_purchase_repository.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_model.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

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

onPurchaseTitleToData({required String title, int? index}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == RouteName.purchase) {
    return addPurchaseController.purchaseModels[index!].productName;
  }
}

onPurchaseTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;

  // addPurchaseController.purchaseModels[index!].update((purchase) {
  if (title == searchVendorsN) {
    addPurchaseController.searchVendorFoundResult =
        AddPurchaseRepository.searchVendor(data: data);
    // addPurchaseController.update();
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
        } else {
          purchase.totalAmount = 0;
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
        } else {
          purchase.totalAmount = 0;
        }
      }
    }
  }
  addPurchaseController.update();
  // });
}

onPurchaseTextFieldPressed({
  required String title,
  int? index,
}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == RouteName.purchase) {
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

onPurchaseAlertDialogOption({required String title, required int index}) {
  AddPurchaseController addPurchaseController = AddPurchaseController.to;
  if (title == searchProductsN) {
    return addPurchaseController.searchProductFoundResult[index].id;
  } else if (title == searchVendorsN) {
    return addPurchaseController.searchVendorFoundResult[index].id;
  }
}

onPurchaseSearchProductAlertDialogOptionSelect(
    {int? listIndex, required int isarId, required String title}) {
  final AddPurchaseController addPurchaseController = AddPurchaseController.to;
  final Isar isar = Get.find();
  if (title == searchProductsN) {
    ProductDatabaseModel productDatabaseModel =
        isar.productDatabaseModels.getSync(isarId)!;
    PurchaseModel purchase = addPurchaseController.purchaseModels[listIndex!];
    // addPurchaseController.purchaseModels[listIndex!].update((purchase) {
    purchase.productId = productDatabaseModel.productId;
    purchase.productName = productDatabaseModel.productName;
    purchase.cost = emptyIfDefaultValue(
        getFormattedNumberWithoutComa(productDatabaseModel.cost));
    if (purchase.quantity.isNotEmpty && isNumeric(purchase.quantity)) {
      purchase.totalAmount =
          double.parse(purchase.quantity) * productDatabaseModel.cost;
    }
    // });
    addPurchaseController.update();
  } else if (title == searchVendorsN) {
    // VendorDatabaseModel vendorDatabaseModel =
    //     isar.vendorDatabaseModels.getSync(isarId)!;
    // addPurchaseController.vendorId = vendorDatabaseModel.vendorId;
    // addPurchaseController.vendorName = vendorDatabaseModel.name;
    // addPurchaseController.vendorPhone = vendorDatabaseModel.phoneNumber;
    // addPurchaseController.vendorAddress = vendorDatabaseModel.address;
    // addPurchaseController.vendorContactPerson = vendorDatabaseModel.contactPerson;
    // addPurchaseController.update();
  }
  Get.back();
}
