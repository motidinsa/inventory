import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/edit_product/controller/edit_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';

import 'package:my_inventory/add_product/controller/add_product_controller.dart';

getSubtotal({required String currentPage}) {
  if (currentPage == salesN()) {
    return getSalesSubtotal();
  } else if (currentPage == purchaseN()) {
    return getPurchaseSubtotal();
  }
}

getTotal({required String currentPage}) {
  if (currentPage == salesN()) {
    return getSalesTotal();
  } else if (currentPage == purchaseN()) {
    return getPurchaseTotal();
  }
}

getProductPrice({required String currentPage, required int index}) {
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    String currentPrice = salesController.salesModels[index].value.price;
    return double.parse(currentPrice.isEmpty ? '0' : currentPrice);
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].value.cost;
  }
}

getProductTotalPrice({required String currentPage, required int index}) {
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return salesController.salesModels[index].value.totalAmount;
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].value.totalAmount;
  }
}

getProductImagePath({required String currentPage}) {
  if (currentPage == addProductN) {
    final AddProductController addProductController = Get.find();
    return addProductController.productInfo.value.localImagePath;
  } else if (currentPage == editProductN) {
    final EditProductController editProductController = Get.find();
    return editProductController.productInfo.value.localImagePath;
  }
}

getSuffix({required String currentPage}) {
  if (currentPage == addProductN) {
    final AddProductController addProductController = Get.find();
    return addProductController.productInfo.value.unitOfMeasurementName;
  } else if (currentPage == editProductN) {
    final EditProductController editProductController = Get.find();
    return editProductController.productInfo.value.unitOfMeasurementName;
  }
}

onImageDeleteButtonPressed({required String currentPage}) {
  if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    addProductController.productInfo.update((val) {
      val?.localImagePath = null;
    });
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    editProductController.productInfo.update((val) {
      val?.localImagePath = null;
    });
  }
}
