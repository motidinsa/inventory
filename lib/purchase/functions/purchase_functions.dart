import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/constants/name_constants.dart';
import '../../core/functions/core_functions.dart';
import '../../core/model/product/product_model.dart';
import '../controller/purchase_controller.dart';

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
              product.name.toLowerCase().contains(data.toLowerCase()))
          .toList());
    } else if (title == quantityN()) {
      if (data.isEmpty) {
        purchase?.quantity = 0;
        purchase?.totalAmount = 0;
      } else {
        if (purchase?.price != 0.0) {
          purchase?.quantity = int.parse(data);
          purchase?.totalAmount = int.parse(data) * purchase.price;
        } else if (purchase?.price == 0) {
          int? num = int.tryParse(data);
          if(num!=null){
            purchase?.quantity = num;
            purchase?.totalAmount = 0;
          }

        }
      }
    } else if (title == priceN()) {
      if (data.isEmpty) {
        purchase?.price = 0;
        purchase?.totalAmount = 0;
      } else {
        if (purchase?.quantity != 0) {
          purchase?.price = double.parse(data);
          purchase?.totalAmount = double.parse(data) * purchase.quantity;
        } else if (purchase?.quantity == 0) {
          purchase?.price = double.parse(data);
          purchase?.totalAmount = 0;
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
    {required ProductModel productModel, required int index}) {
  final PurchaseController purchaseController = Get.find();
  purchaseController.purchaseModels[index].update((purchase) {
    purchase?.productName = productModel.name;
    purchase?.productId = productModel.id;
    purchase?.price = productModel.price;
    if (purchase?.quantity != 0) {
      purchase?.totalAmount = purchase.quantity * productModel.price;
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
    total += element.value.price;
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
