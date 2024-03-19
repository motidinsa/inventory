import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';

onPurchaseTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  PurchaseController purchaseController = Get.find();
  purchaseController.purchaseModels[index!].update((purchase) {
    if (title == searchProductsN()) {
      PurchaseController purchaseController = Get.find();
      purchaseController.searchProductFoundResult(purchaseController.products
          .where((product) =>
              product.productName.toLowerCase().contains(data.toLowerCase()))
          .toList());
    } else if (title == quantityN()) {
      if (data.isEmpty) {
        purchase?.quantity = '';
        purchase?.totalAmount = 0;
      } else {
        purchase?.quantity = data;
        if (isNumeric(purchase!.quantity) && isNumeric(purchase.cost)) {
          purchase.totalAmount =
              double.parse(data) * double.parse(purchase.cost);
        } else {
          purchase.totalAmount = 0;
        }
      }
    } else if (title == costN) {
      if (data.isEmpty) {
        purchase?.cost = '';
        purchase?.totalAmount = 0;
      } else {
        purchase?.cost = data;
        if (isNumeric(purchase!.quantity) && isNumeric(purchase.cost)) {
          purchase.totalAmount =
              double.parse(data) * double.parse(purchase.quantity);
        } else {
          purchase.totalAmount = 0;
        }
      }
    }
  });
}

onPurchaseProductFocusChange({
  required String title,
  required String data,
}) {
  final PurchaseController purchaseController = Get.find();
  if (title == discountN()) {
    purchaseController.discount(data);
  }
}

onPurchaseSearchProductAlertDialogOptionSelect(
    {required int listIndex, required String productId}) {
  final PurchaseController purchaseController = Get.find();

  ProductDatabaseModel productDatabaseModel = isar.productDatabaseModels
      .filter()
      .productIdEqualTo(productId)
      .findFirstSync()!;
  purchaseController.purchaseModels[listIndex].update((purchase) {
    purchase?.productId = productId;
    purchase?.productName = productDatabaseModel.productName;
    purchase?.cost = emptyIfDefaultValue(
        getFormattedNumberWithoutComa(productDatabaseModel.cost));
    if (purchase!.quantity.isNotEmpty && isNumeric(purchase.quantity)) {
      purchase.totalAmount =
          double.parse(purchase.quantity) * productDatabaseModel.cost;
    }
  });
}

getPurchaseAlertDialogProductLength() {
  PurchaseController purchaseController = Get.find();
  return purchaseController.searchProductFoundResult.length;
}

getPurchaseSubtotal() {
  PurchaseController purchaseController = Get.find();
  double total = 0;
  for (var element in purchaseController.purchaseModels) {
    if (isNumeric(element.value.cost)) {
      total += double.parse(element.value.cost);
    }
  }
  return total.toString();
}

getPurchaseTotal() {
  PurchaseController purchaseController = Get.find();
  double total = 0;
  for (var element in purchaseController.purchaseModels) {
    total += element.value.totalAmount;
  }
  return total.toString();
}
