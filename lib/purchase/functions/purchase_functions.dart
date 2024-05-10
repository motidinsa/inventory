import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';

import 'package:my_inventory/core/model/purchase/purchase_model.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

onPurchaseTitleToData({required String title, int? index}) {
  PurchaseController purchaseController = Get.find();
  if (title == RouteName.purchase) {
    return purchaseController.purchaseModels[index!].productName;
  } else if (title == costN) {
    return purchaseController.purchaseModels[index!].cost;
  } else if (title == selectN) {
    return purchaseController.vendorName;
  } else if (title == quantityN) {
    return purchaseController.purchaseModels[index!].quantity;
  }
}

onPurchaseTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  PurchaseController purchaseController = Get.find();
  PurchaseModel purchase = purchaseController.purchaseModels[index!];
  // purchaseController.purchaseModels[index!].update((purchase) {
    if (title == searchProductsN) {
      PurchaseController purchaseController = Get.find();
      final Isar isar = Get.find();
      purchaseController.searchProductFoundResult(isar.productDatabaseModels
          .filter()
          .productNameContains(data, caseSensitive: false)
          .findAllSync());
    } else if (title == quantityN) {
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
      purchaseController.update();
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
    purchaseController.update();
  // });
}

onPurchaseProductFocusChange({
  required String title,
  required String data,
}) {
  final PurchaseController purchaseController = Get.find();
  if (title == discountN) {
    purchaseController.discount=data;
    purchaseController.update();
  }
}

onPurchaseAlertDialogOption({required String title, required int index}) {
  PurchaseController purchaseController = Get.find();
  if (title == searchProductsN) {
    return purchaseController.searchProductFoundResult[index].id;
  } else if (title == searchVendorsN) {
    return purchaseController.searchVendorFoundResult[index].id;
  }
}

onPurchaseSearchProductAlertDialogOptionSelect(
    {int? listIndex, required int isarId, required String title}) {
  final PurchaseController purchaseController = Get.find();
  final Isar isar = Get.find();
  if (title == searchProductsN) {
    ProductDatabaseModel productDatabaseModel =
        isar.productDatabaseModels.getSync(isarId)!;
    PurchaseModel purchase = purchaseController.purchaseModels[listIndex!];
    // purchaseController.purchaseModels[listIndex!].update((purchase) {
      purchase.productId = productDatabaseModel.productId;
      purchase.productName = productDatabaseModel.productName;
      purchase.cost = emptyIfDefaultValue(
          getFormattedNumberWithoutComa(productDatabaseModel.cost));
      if (purchase.quantity.isNotEmpty && isNumeric(purchase.quantity)) {
        purchase.totalAmount =
            double.parse(purchase.quantity) * productDatabaseModel.cost;
      }
    // });
    purchaseController.update();
  } else if (title == searchVendorsN) {
    VendorDatabaseModel vendorDatabaseModel =
        isar.vendorDatabaseModels.getSync(isarId)!;
    purchaseController.vendorId = vendorDatabaseModel.vendorId;
    purchaseController.vendorName = vendorDatabaseModel.name;
    purchaseController.vendorPhone = vendorDatabaseModel.phoneNumber;
    purchaseController.vendorAddress = vendorDatabaseModel.address;
    purchaseController.vendorContactPerson = vendorDatabaseModel.contactPerson;
    purchaseController.update();
  }
  Get.back();
}

getPurchaseAlertDialogProductLength() {
  PurchaseController purchaseController = Get.find();
  return purchaseController.searchProductFoundResult.length;
}

getPurchaseSubtotal() {
  PurchaseController purchaseController = Get.find();
  double total = 0;
  for (var element in purchaseController.purchaseModels) {
    if (isNumeric(element.cost)) {
      total += double.parse(element.cost);
    }
  }
  return total.toString();
}

getPurchaseTotal() {
  PurchaseController purchaseController = Get.find();
  double total = 0;
  for (var element in purchaseController.purchaseModels) {
    total += element.totalAmount;
  }
  return total.toString();
}
