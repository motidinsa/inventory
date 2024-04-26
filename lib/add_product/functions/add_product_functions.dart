import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import '../../core/routes/route_names.dart';

onAddProductTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  AddProductController addProductController = Get.find();
  Isar isar = Get.find();
  if (title == selectCategoryN) {
    addProductController.categoryListFoundResult(isar.categoryDatabaseModels
        .filter()
        .categoryNameContains(data, caseSensitive: false)
        .findAllSync());
  } else if (title == selectUomSN) {
    addProductController.unitOfMeasurementListFoundResult(isar
        .unitOfMeasurementDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync());
  }
}

onAddProductFocusChange({
  required String title,
  required String data,
}) {
  final AddProductController addProductController = Get.find();
  addProductController.productInfo.update((product) {
    if (title == productN) {
      product?.name = data;
    } else if (title == descriptionN) {
      product?.description = data;
    } else if (title == productIdN) {
      product?.userAssignedProductId = data;
    } else if (title == costN) {
      product?.cost = data;
    } else if (title == priceN) {
      product?.price = data;
    } else if (title == quantityOnHandN) {
      product?.quantityOnHand = data;
    } else if (title == reorderQuantityN) {
      product?.reorderQuantity = data;
    } else if ([categoryNameN, uomNameN].contains(title)) {
      AddItemController addItemController = Get.find();
      addItemController.addedText(data);
    }
  });
}

getAddProductAlertDialogLength({required String title}) {
  AddProductController addProductController = Get.find();
  if (title == selectCategoryN) {
    return addProductController.categoryListFoundResult.length;
  } else if (title == selectUomSN) {
    return addProductController.unitOfMeasurementListFoundResult.length;
  }
}

onSalesProductSelect({
  String? title,
  int? listIndex,
}) {
  final SalesController salesController = Get.find();
  final Isar isar = Get.find();
  if (title == RouteName.sales) {
    salesController.searchProductFoundResult(
        isar.productDatabaseModels.where().findAllSync());

    Get.dialog(AlertDialogOptionSelect(
      title: searchProductsN,
      listIndex: listIndex,
    )).then(
      (value) async {
        await unFocus();
      },
    );
  } else if (title == selectN) {
    salesController.searchCustomerFoundResult(
        isar.customerDatabaseModels.where().findAllSync());
    Get.dialog(const AlertDialogOptionSelect(
      title: searchCustomersN,
    )).then(
      (value) {
        unFocus();
      },
    );
  }
}

onPurchaseProductSelect({
  String? title,
  int? index,
}) {
  PurchaseController purchaseController = Get.find();
  final Isar isar = Get.find();
  if (title == purchaseN) {
    purchaseController.searchProductFoundResult(
        isar.productDatabaseModels.where().findAllSync());
    Get.dialog(AlertDialogOptionSelect(
      title: searchProductsN,
      listIndex: index,
    )).then(
      (value) {
        unFocus();
      },
    );
  } else if (title == selectN) {
    purchaseController.searchVendorFoundResult(
        isar.vendorDatabaseModels.where().findAllSync());
    Get.dialog(const AlertDialogOptionSelect(
      title: searchVendorsN,
    )).then(
      (value) {
        unFocus();
      },
    );
  }
}

onAddProductTextFieldPressed({required String title}) {
  final AddProductController addProductController = Get.find();
  final Isar isar = Get.find();
  Map<String, List> itemsWithList = {
    categoryN: addProductController.categoryListFoundResult,
    uomSN: addProductController.unitOfMeasurementListFoundResult,
  };

  if (itemsWithList.keys.contains(title)) {
    var categoryList = isar.categoryDatabaseModels.where().findAllSync();
    var uomList = isar.unitOfMeasurementDatabaseModels.where().findAllSync();
    addProductController.categoryListFoundResult(categoryList);
    addProductController.unitOfMeasurementListFoundResult(uomList);
    Get.dialog(AlertDialogOptionSelect(
      title: title == categoryN ? selectCategoryN : selectUomSN,
    )).then(
      (value) {
        unFocus();
      },
    );
  }
}

onAddProductAlertDialogOptionSelect(
    {required String title, required String data, required int isarId}) {
  final AddProductController addProductController = Get.find();
  final Isar isar = Get.find();
  addProductController.productInfo.update((product) {
    if (title == selectCategoryN) {
      CategoryDatabaseModel categoryDatabaseModel =
          isar.categoryDatabaseModels.getSync(isarId)!;
      product?.categoryName = data;
      product?.categoryId = categoryDatabaseModel.categoryId;
    } else if (title == selectUomSN) {
      UnitOfMeasurementDatabaseModel uomDatabaseModel =
          isar.unitOfMeasurementDatabaseModels.getSync(isarId)!;
      product?.unitOfMeasurementName = data;
      product?.unitOfMeasurementId = uomDatabaseModel.uomId;
    }
  });
  Get.back();
  addProductController.update();
}

onAddProductGetData({required String title}) {
  AddProductController addProductController = Get.find();
  if (title == categoryN) {
    return addProductController.productInfo.value.categoryName;
  } else if (title == uomSN) {
    return addProductController.productInfo.value.unitOfMeasurementName;
  } else if (title == productN) {
    return addProductController.productInfo.value.name;
  }
}
