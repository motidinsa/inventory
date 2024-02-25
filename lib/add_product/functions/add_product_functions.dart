import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

titleToHint({String? title}) {
  var titleToHint = {
    productN(): enterProductNameN(),
    descriptionN(): writeYourDescriptionN(),
    categoryN(): selectItemN(),
    productIdN(): optionalN(),
    uomN(): selectItemN(),
    productListN(): searchByProductNameOrIdN(),
    salesN(): selectItemN(),
    searchProductsN(): searchByProductNameOrIdN(),
  };
  return titleToHint[title];
  // if (currentPage == addProductN()) {
  //   var titleToHint = {
  //     productN(): enterProductNameN(),
  //     descriptionN(): writeYourDescriptionN(),
  //     categoryN(): selectItemN(),
  //     productIdN(): optionalN(),
  //     uomN(): selectItemN(),
  //     productListN(): searchByProductNameOrIdN(),
  //
  //   };
  //   return titleToHint[title];
  // } else if (currentPage == salesN()) {
  //   var pageToHint = {
  //     salesN(): selectItemN(),
  //     searchProductsN(): searchByProductNameOrIdN(),
  //   };
  //   return pageToHint[title];
  // }
  // else if (currentPage == salesN()) {
  //   var pageToHint = {
  //     salesN(): selectItemN(),
  //     searchProductsN(): searchByProductNameOrIdN(),
  //   };
  //   return pageToHint[title];
  // }
}

hasOption({String? title}) {
  var itemsWithOption = [categoryN(), uomN(), salesN()];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [productN(), descriptionN(), searchProductsN(), productListN()];
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

hasSearchIcon({String? title}) {
  var items = [productListN(), searchProductsN()];
  return items.contains(title);
}

onAddProductFocusChange({
  required String title,
  required bool hasFocus,
  required String data,
}) {
  if (!hasFocus) {
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
    salesController.salesModel[index!].update((sales) {
      if (data.isNotEmpty) {
        sales?.quantity = int.parse(data);
        sales?.totalAmount = int.parse(data) * sales.price;
      } else {
        sales?.quantity = 0;
        sales?.totalAmount = 0;
      }
    });
  }
}

getAlertDialogProduct({required int index}) {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult[index];
}

getAlertDialogProductLength() {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult.length;
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

onAddProductTextFieldPressed(
    {required String title, required BuildContext context}) {
  final AddProductController addProductController = Get.find();
  Map<String, List<String>> itemsWithList = {
    categoryN(): addProductController.categoryList,
    uomN(): addProductController.unitOfMeasurementList,
  };
  if (itemsWithList.keys.contains(title)) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          currentPage: addProductN(),
          title: title,
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
  }
}

onSalesSearchProductAlertDialogOptionSelect(
    {required ProductModel productModel, required int index}) {
  final SalesController salesController = Get.find();
  salesController.salesModel[index].update((sales) {
    sales?.productName = productModel.name;
    sales?.productId = productModel.id;
    sales?.price = productModel.price;
  });
}

onAddProductAlertDialogOptionSelect(
    {required String title, required String data}) {
  final AddProductController addProductController = Get.find();

  addProductController.productInfo.update((product) {
    if (title == categoryN()) {
      product?.categoryName = data;
    } else if (title == uomN()) {
      product?.unitOfMeasurement = data;
    }
  });
  Get.back();
}
