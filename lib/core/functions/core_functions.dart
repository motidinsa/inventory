import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';
import 'package:my_inventory/core/model/product/deleted_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/ui/add_item.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/product_detail/controller/product_detail_controller.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

bool isNumeric(String input) {
  final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
  return numberRegExp.hasMatch(input);
}

generateDatabaseId({required DateTime time, var identifier}) {
  final DateFormat dateFormatter =
      DateFormat('yyyyMMdd_HmsS${identifier != null ? '_$identifier' : ''}');
  String key = dateFormatter.format(time);
  return key;
}

double getValidNumValue(String data) {
  if (isNumeric(data)) {
    return double.parse(data);
  }
  return 0;
}

autoValidateMode() {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    if (addProductController.isSubmitButtonPressed.isTrue) {
      return true;
    }
  }
  return false;
}

getFormattedNumberWithComa(double num) {
  return NumberFormat("#,###.##").format(num);
}

getFormattedNumberWithoutComa(num) {
  if (isNumeric(num.toString())) {
    return NumberFormat("###.##").format(double.parse(num.toString()));
  }
  return num.toString();
}

onActionButtonPressed({required String redirectFrom}) async {
  await unFocus();
  if (redirectFrom == productDetailN) {
    await isar.writeTxn(() async {
      await isar.productDatabaseModels.delete(ProductDetailController.to.id);
      await isar.deletedProductDatabaseModels.put(
        DeletedProductDatabaseModel()
          ..productId = ProductDetailController.to.productId
          ..deletedDate = DateTime.now()
          ..deletedByUserId = AppController.to.userId.value,
      );
    });
    Get.back();
  } else if ([categoryNameN, uomNameN].contains(redirectFrom)) {
    AddItemController addItemController = Get.find();
    if (addItemController.formKey.currentState!.validate()) {
      final AppController appController = Get.find();
      String currentPage = appController.currentPages.last;
      DateTime now = DateTime.now();
      String id = generateDatabaseId(time: now);
      if (redirectFrom == categoryNameN) {
        await isar.writeTxn(() async {
          await isar.categoryDatabaseModels.put(
            CategoryDatabaseModel()
              ..categoryName = addItemController.addedText.value
              ..dateCreated = now
              ..createdByUserId = appController.userId.value
              ..categoryId = id,
          );
          await isar.logCategoryDatabaseModels.put(
            LogCategoryDatabaseModel()
              ..categoryName = addItemController.addedText.value
              ..dateCreated = now
              ..createdByUserId = appController.userId.value
              ..categoryId = id
              ..dateModified = now
              ..modifiedByUserId = appController.userId.value,
          );
        });
        if (currentPage == addProductN) {
          AddProductController addProductController = Get.find();
          addProductController.categoryListFoundResult(
              isar.categoryDatabaseModels.where().findAllSync());
        } else if (currentPage == editProductN) {
          EditProductController editProductController = Get.find();
          editProductController.categoryListFoundResult(
              isar.categoryDatabaseModels.where().findAllSync());
        }
      } else if (redirectFrom == uomNameN) {
        await isar.writeTxn(() async {
          await isar.unitOfMeasurementDatabaseModels.put(
            UnitOfMeasurementDatabaseModel()
              ..name = addItemController.addedText.value
              ..dateCreated = now
              ..createdByUserId = appController.userId.value
              ..uomId = id,
          );
          await isar.logUnitOfMeasurementDatabaseModels.put(
            LogUnitOfMeasurementDatabaseModel()
              ..name = addItemController.addedText.value
              ..dateCreated = now
              ..createdByUserId = appController.userId.value
              ..uomId = id
              ..dateModified = now
              ..modifiedByUserId = appController.userId.value,
          );
        });
        if (currentPage == addProductN) {
          AddProductController addProductController = Get.find();
          addProductController.unitOfMeasurementListFoundResult(
              isar.unitOfMeasurementDatabaseModels.where().findAllSync());
        } else if (currentPage == editProductN) {
          EditProductController editProductController = Get.find();
          editProductController.unitOfMeasurementListFoundResult(
              isar.unitOfMeasurementDatabaseModels.where().findAllSync());
        }
      }
      Get.back();
    } else {
      return;
    }
  } else if (AppController.to.formKey.currentState!.validate()) {
    if (redirectFrom == addProductN) {
      AddProductController addProductController = Get.find();
      addProductController.isSubmitButtonPressed(true);
      addProductController.onAddProductSaveButtonPressed();
    } else if (redirectFrom == salesN()) {
      SalesController salesController = Get.find();
      salesController.saveSalesProductToDB();
    } else if (redirectFrom == purchaseN()) {
      PurchaseController purchaseController = Get.find();
      purchaseController.savePurchaseProductToDB();
    } else if (redirectFrom == editProductN) {
      EditProductController editProductController = Get.find();
      editProductController.onEditProductSaveButtonPressed();
    }
  }
}

titleToData({required String title, int? index}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  String? value;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    if (title == salesN()) {
      value = salesController.salesModels[index!].value.productName;
    }
    // else if (title == quantityN()) {
    //   value = emptyIfDefaultValue(
    //       salesController.salesModels[index!].value.quantity);
    // }
    // else if (title == discountN()) {
    //   value = salesController.discount.value;
    // }
    // else if (title == searchProductsN()) {
    //   value = salesController.emptyString.value;
    // }
    // else if (title == defaultN) {
    //   value = salesController.emptyString.value;
    // }
  } else if (currentPage == addProductN) {
    return onAddProductGetData(title: title);
  }
  else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    if (title == purchaseN()) {
      value = purchaseController.purchaseModels[index!].value.productName;
    }
    else if (title == costN) {
      value = purchaseController.purchaseModels[index!].value.cost;
    }
  } else if (currentPage == productListN()) {
    // ProductListController productListController = Get.find();
    // value = productListController.emptyValue.value;
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    if (title == productN) {
      value = editProductController.productInfo.value.name;
    } else if (title == descriptionN) {
      value = editProductController.productInfo.value.description;
    } else if (title == productIdN) {
      value = editProductController.productInfo.value.userAssignedProductId;
    } else if (title == costN) {
      value = emptyIfDefaultValue(getFormattedNumberWithoutComa(
          editProductController.productInfo.value.cost));
    } else if (title == priceN()) {
      value = emptyIfDefaultValue(getFormattedNumberWithoutComa(
          editProductController.productInfo.value.price));
    } else if (title == quantityOnHandN) {
      value = emptyIfDefaultValue(getFormattedNumberWithoutComa(
          editProductController.productInfo.value.quantityOnHand));
    } else if (title == reorderQuantityN) {
      value = emptyIfDefaultValue(getFormattedNumberWithoutComa(
          editProductController.productInfo.value.reorderQuantity));
    } else if (title == uomSN) {
      value = editProductController.productInfo.value.unitOfMeasurementName;
    } else if (title == categoryN) {
      value = editProductController.productInfo.value.categoryName;
    } else if (title == selectCategoryN) {
      value = editProductController.emptyText.value;
    } else if (title == selectUomSN) {
      value = editProductController.emptyText.value;
    } else if (title == categoryNameN) {
      value = editProductController.emptyText.value;
    } else if (title == uomNameN) {
      value = editProductController.emptyText.value;
    }
  }
  return value;
}

emptyIfNull(String? data) {
  if (data != null) {
    return data;
  }
  return '';
}

emptyIfDefaultValue(var data) {
  var emptyLists = [0, '0.0', '0'];
  if (!emptyLists.contains(data)) {
    return data.toString();
  }
  return '';
}

nullIfEmpty(String? data) {
  if (data != null) {
    if (data.isEmpty) {
      return null;
    }
  }
  return data;
}

onAddIconPressed({String? type}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    purchaseController.addPurchaseProduct();
  } else {
    Get.back();
    Get.dialog(
      AddItem(
        type: type!,
      ),
    ).then((value) {
      RxList? itemList;
      if (currentPage == addProductN) {
        AddProductController addProductController = Get.find();
        if (type == selectCategoryN) {
          itemList = addProductController.categoryListFoundResult;
        } else {
          addProductController.unitOfMeasurementListFoundResult;
        }
      } else if (currentPage == editProductN) {
        EditProductController editProductController = Get.find();
        if (type == selectCategoryN) {
          itemList = editProductController.categoryListFoundResult;
        } else {
          editProductController.unitOfMeasurementListFoundResult;
        }
      }

      Get.dialog(
        AlertDialogOptionSelect(
          title: type,
        ),
      );
    });
  }
}

onAddImagePressed({int? id}) {
  if (id != null) {
    ProductListController.to.selectedId = id;
  }
  Get.dialog(const AlertDialogOptionSelect(
    title: selectSourceN,
  )).then((value) => unFocus());
}

onImageSourceButtonPressed({
  required String sourceLocation,
}) async {
  final ImagePicker picker = ImagePicker();
  await picker
      .pickImage(
          source: sourceLocation == galleryN
              ? ImageSource.gallery
              : ImageSource.camera,
          imageQuality: 50)
      .then((value) async {
    final AppController appController = Get.find();
    String currentPage = appController.currentPages.last;
    if (currentPage == addProductN) {
      AddProductController addProductController = Get.find();
      addProductController.productInfo.update((val) async {
        val?.localImagePath = value?.path;
      });
    } else if (currentPage == editProductN) {
      EditProductController editProductController = Get.find();
      editProductController.productInfo.update((val) async {
        val?.localImagePath = value?.path;
      });
    } else if (ProductListController.to.selectedId != null) {
      await isar.writeTxn(() async {
        final dbProduct = await isar.productDatabaseModels
            .get(ProductListController.to.selectedId!);
        dbProduct?.localImagePath = value?.path;
        await isar.productDatabaseModels.put(dbProduct!);
      });
      ProductListController.to.selectedId = null;
      ProductListController.to
          .productList(isar.productDatabaseModels.where().findAllSync());
    }

    Get.back();
  });
}

titleToIcon({required String title}) {
  IconData? iconData;
  if (title == dateN) {
    iconData = Icons.calendar_month_rounded;
  } else if (title == refN) {
    // iconData = Icons.contra;
  } else if (title == telN) {
    iconData = Icons.phone;
  } else if (title == emailN()) {
    iconData = Icons.email_outlined;
  }
  return iconData != null
      ? Icon(iconData, color: Colors.grey.shade600)
      : Container();
}

getKeyboardType({required String title}) {
  final List<String> numberKeyboardLists = [
    costN,
    priceN(),
    quantityOnHandN,
    reorderQuantityN,
    quantityN()
  ];
  if (numberKeyboardLists.contains(title)) {
    return TextInputType.number;
  } else if (title == phoneNumberN()) {
    return TextInputType.phone;
  } else if (title == emailN()) {
    return TextInputType.emailAddress;
  }
  return TextInputType.name;
}

mapValidation({
  required String title,
  required String data,
}) {
  List<String> nonEmptyTitles = [
    productN,
    categoryNameN,
    uomNameN,
    quantityN(),
    purchaseN(),
    salesN()
  ];
  List<String> numberKeyboardLists = [
    costN,
    priceN(),
    quantityOnHandN,
    reorderQuantityN,
    quantityN(),
    purchaseN(),
  ];
  if (nonEmptyTitles.contains(title)) {
    if (data.isEmpty) {
      return 'Required';
    } else if ([quantityN()].contains(title)) {
      if (!isNumeric(data)) {
        return 'Invalid number';
      }
    }
  } else if (numberKeyboardLists.contains(title)) {
    if (data.isNotEmpty && !isNumeric(data)) {
      return 'Invalid number';
    }
  }
  return null;
}
