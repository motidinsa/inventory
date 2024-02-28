import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

titleToHint({String? title}) {
  String? value;
  if (title == productN()) {
    value = enterProductNameN();
  } else if (title == descriptionN()) {
    value = writeYourDescriptionN();
  } else if (title == categoryN()) {
    value = selectItemN();
  } else if (title == productIdN()) {
    value = optionalN();
  } else if (title == uomN()) {
    value = selectItemN();
  } else if (title == productListN()) {
    value = searchByProductNameOrIdN();
  } else if (title == salesN()) {
    value = selectItemN();
  } else if (title == purchaseN()) {
    value = selectItemN();
  } else if (title == searchProductsN()) {
    value = searchByProductNameOrIdN();
  } else if (title == selectCategory()) {
    value = searchByCategoryNameN();
  } else if (title == selectUomN()) {
    value = searchUomN();
  }
  return value;
}

hasOption({String? title}) {
  var itemsWithOption = [categoryN(), uomN(), salesN(), purchaseN()];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [
    productN(),
    descriptionN(),
    searchProductsN(),
    productListN(),
    selectCategory(),
    selectUomN(),
    discountN()
  ];
  return !items.contains(title);
}

hasPrefix({required String currentPage, String? title}) {
  var items = [costN(), priceN()];
  if (currentPage == purchaseN() && title == priceN()) {
    return false;
  }
  return items.contains(title);
}

hasSuffix({String? title}) {
  var items = [quantityOnHandN(), reorderQuantityN()];
  return items.contains(title);
}

hasSearchIcon({String? title}) {
  var items = [
    productListN(),
    searchProductsN(),
    selectCategory(),
    selectUomN(),
  ];
  return items.contains(title);
}

onFocusChange({
  required String currentPage,
  required String title,
  required bool hasFocus,
  required String data,
}) {
  if (!hasFocus) {
    if (currentPage == addProductN()) {
      onAddProductFocusChange(title: title, data: data);
    } else if (currentPage == salesN()) {
      onSalesProductFocusChange(title: title, data: data);
    } else if (currentPage == purchaseN()) {
      onPurchaseProductFocusChange(title: title, data: data);
    }
  }
}

onAddProductFocusChange({
  required String title,
  required String data,
}) {
  final AddProductController addProductController = Get.find();
  addProductController.productInfo.update((product) {
    if (title == productN()) {
      product?.name = data;
    } else if (title == descriptionN()) {
      product?.description = data;
    } else if (title == productIdN()) {
      product?.productId = data;
    } else if (title == costN()) {
      product?.cost = double.parse(data);
    } else if (title == priceN()) {
      product?.price = double.parse(data);
    } else if (title == quantityOnHandN()) {
      product?.quantityOnHand = int.parse(data);
    } else if (title == reorderQuantityN()) {
      product?.reorderQuantity = int.parse(data);
    }
  });
}

onSalesProductFocusChange({
  required String title,
  required String data,
}) {
  final SalesController salesController = Get.find();
  if (title == discountN()) {
    salesController.discount(data);
  }
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

onSalesFocusChange({
  required String title,
  required String data,
}) {
  final SalesController salesController = Get.find();
  if (title == discountN()) {
    salesController.discount(data);
  }
}

onTextFieldPressed(
    {required String currentPage,
    String? title,
    int? index,
    required BuildContext context}) {
  if (currentPage == addProductN()) {
    onAddProductTextFieldPressed(title: title!, context: context);
  } else if (currentPage == salesN()) {
    onSalesProductSelect(context: context, title: title, index: index);
  } else if (currentPage == purchaseN()) {
    onPurchaseProductSelect(context: context, title: title, index: index);
  }
}

onTextFieldChange({
  required String currentPage,
  String? title,
  required String data,
  int? index,
}) {
  if (currentPage == salesN() && title == searchProductsN()) {
    SalesController salesController = Get.find();
    salesController.searchProductFoundResult = salesController.products
        .where((product) =>
            product.name.toLowerCase().contains(data.toLowerCase()))
        .toList()
        .obs;
  } else if (currentPage == salesN() && title == quantity()) {
    SalesController salesController = Get.find();
    salesController.salesModels[index!].update((sales) {
      if (data.isNotEmpty) {
        sales?.quantity = int.parse(data);
        sales?.totalAmount = int.parse(data) * sales.price;
      } else {
        sales?.quantity = 0;
        sales?.totalAmount = 0;
      }
    });
  } else if (currentPage == addProductN() && title == selectCategory()) {
    AddProductController addProductController = Get.find();
    addProductController.categoryListFoundResult = addProductController
        .categoryList
        .where((categoryName) =>
            categoryName.toLowerCase().contains(data.toLowerCase()))
        .toList()
        .obs;
  } else if (currentPage == addProductN() && title == selectUomN()) {
    AddProductController addProductController = Get.find();
    addProductController.unitOfMeasurementListFoundResult = addProductController
        .unitOfMeasurementList
        .where((categoryName) =>
            categoryName.toLowerCase().contains(data.toLowerCase()))
        .toList()
        .obs;
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    purchaseController.purchaseModels[index!].update((purchase) {
      if (title == quantity()) {
        if (data.isEmpty) {
            purchase?.quantity = 0;
            purchase?.totalAmount = 0;
        } else {
          if (purchase?.price != 0) {
            purchase?.quantity = int.parse(data);
            purchase?.totalAmount = int.parse(data) * purchase.price;
          } else if (purchase?.price == 0) {
            purchase?.quantity = int.parse(data);
            purchase?.totalAmount = 0;
          }
        }
      }else if(title == priceN()) {
        if (data.isEmpty) {
          purchase?.quantity = 0;
          purchase?.totalAmount = 0;
        } else {
          if (purchase?.quantity != 0) {
            purchase?.quantity = int.parse(data);
            purchase?.totalAmount = int.parse(data) * purchase.price;
          } else if (purchase?.price == 0) {
            purchase?.quantity = int.parse(data);
            purchase?.totalAmount = 0;
          }
        }
      }
    });
  }
}

getAlertDialogProduct({required int index}) {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult[index];
}

getSalesAlertDialogProductLength() {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult.length;
}

getPurchaseAlertDialogProductLength() {
  PurchaseController purchaseController = Get.find();
  return purchaseController.searchProductFoundResult.length;
}

getAlertDialogAddProductLength({required String title}) {
  AddProductController addProductController = Get.find();
  if (title == selectCategory()) {
    return addProductController.categoryListFoundResult.length;
  } else if (title == selectUomN()) {
    return addProductController.unitOfMeasurementListFoundResult.length;
  }
}

getAlertDialogLength({required String currentPage, String? title}) {
  if (currentPage == salesN()) {
    return getSalesAlertDialogProductLength();
  } else if (currentPage == addProductN()) {
    return getAlertDialogAddProductLength(title: title!);
  } else if (currentPage == purchaseN()) {
    return getPurchaseAlertDialogProductLength();
  }
}

onSalesProductSelect({
  required BuildContext context,
  String? title,
  int? index,
}) {
  if (title == salesN()) {
    SalesController salesController = Get.find();
    salesController.searchProductFoundResult = salesController.products.obs;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          currentPage: salesN(),
          title: searchProductsN(),
          index: index,
        );
      },
    ).then(
      (value) async {
        await unFocus();
        // if (title == transactionName()) {
        //   Get.delete<OtherTransactionAddController>();
        // }
      },
    );
  }
}

onPurchaseProductSelect({
  required BuildContext context,
  String? title,
  int? index,
}) {
  if (title == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    purchaseController.searchProductFoundResult =
        purchaseController.products.obs;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          currentPage: purchaseN(),
          title: searchProductsN(),
          index: index,
        );
      },
    ).then(
      (value) async {
        await unFocus();
      },
    );
  }
}

onAddProductTextFieldPressed(
    {required String title, required BuildContext context}) {
  final AddProductController addProductController = Get.find();
  Map<String, List<String>> itemsWithList = {
    categoryN(): addProductController.categoryList,
    uomN(): addProductController.unitOfMeasurementList,
  };

  if (itemsWithList.keys.contains(title)) {
    addProductController.categoryListFoundResult =
        addProductController.categoryList;
    addProductController.unitOfMeasurementListFoundResult =
        addProductController.unitOfMeasurementList;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          currentPage: addProductN(),
          title: title == categoryN() ? selectCategory() : selectUomN(),
          itemList: itemsWithList[title]!,
        );
      },
    ).then(
      (value) async {
        await unFocus();
        // if (title == transactionName()) {
        //   Get.delete<OtherTransactionAddController>();
        // }
      },
    );
  }
}

onAlertDialogOptionSelect(
    {required String title,
    required String currentPage,
    ProductModel? productModel,
    String? data,
    int? index}) {
  if (currentPage == salesN()) {
    onSalesSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  } else if (currentPage == addProductN()) {
    onAddProductAlertDialogOptionSelect(title: title, data: data!);
  } else if (currentPage == purchaseN()) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  }
  Get.back();
}

onSalesSearchProductAlertDialogOptionSelect(
    {required ProductModel productModel, required int index}) {
  final SalesController salesController = Get.find();
  salesController.salesModels[index].update((sales) {
    sales?.productName = productModel.name;
    sales?.productId = productModel.id;
    sales?.price = productModel.price;
  });
}

onPurchaseSearchProductAlertDialogOptionSelect(
    {required ProductModel productModel, required int index}) {
  final PurchaseController purchaseController = Get.find();
  purchaseController.purchaseModels[index].update((purchase) {
    purchase?.productName = productModel.name;
    purchase?.productId = productModel.id;
    purchase?.price = productModel.price;
  });
}

onAddProductAlertDialogOptionSelect(
    {required String title, required String data}) {
  final AddProductController addProductController = Get.find();

  addProductController.productInfo.update((product) {
    if (title == selectCategory()) {
      product?.categoryName = data;
    } else if (title == selectUomN()) {
      product?.unitOfMeasurement = data;
    }
  });
}
