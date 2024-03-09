import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
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
        if (isNumeric(purchase!.quantity) && isNumeric(purchase.price)) {
          purchase.totalAmount =
              double.parse(data) * double.parse(purchase.price);
        } else {
          purchase.totalAmount = 0;
        }
      }
    } else if (title == priceN()) {
      if (data.isEmpty) {
        purchase?.price = '';
        purchase?.totalAmount = 0;
      } else {
        purchase?.price = data;
        if (isNumeric(purchase!.quantity) && isNumeric(purchase.price)) {
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
    {required ProductDatabaseModel productModel, required int index}) {
  final PurchaseController purchaseController = Get.find();
  purchaseController.purchaseModels[index].update((purchase) {
    purchase?.productName = productModel.productName;
    purchase?.productId = productModel.id;
    purchase?.price = getFormattedNumberWithoutComa(productModel.price);
    if (purchase!.quantity.isNotEmpty && isNumeric(purchase.quantity)) {
      purchase.totalAmount =
          double.parse(purchase.quantity) * productModel.price;
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
    if (isNumeric(element.value.price)) {
      total += double.parse(element.value.price);
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
