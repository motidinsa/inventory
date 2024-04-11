import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/report/report_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/ui/add_item.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/customer_detail/functions/customer_detail_functions.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';
import 'package:my_inventory/edit_customer/functions/edit_customer_functions.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';
import 'package:my_inventory/edit_vendor/controller/edit_vendor_controller.dart';
import 'package:my_inventory/edit_vendor/functions/edit_vendor_functions.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/product_detail/functions/product_detail_functions.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/vendor_detail/functions/vendor_detail_functions.dart';

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
  final Isar isar = Get.find();
  if (redirectFrom == productDetailN) {
    deleteProduct();
  } else if (redirectFrom == customerDetailN) {
    deleteCustomer();
  } else if (redirectFrom == vendorDetailN) {
    deleteVendor();
  } else if ([categoryNameN, uomNameN].contains(redirectFrom)) {
    AddItemController addItemController = Get.find();
    if (addItemController.formKey.currentState!.validate()) {
      final AppController appController = Get.find();
      String currentPage = appController.currentPages.last;
      DateTime now = DateTime.now();
      String id = generateDatabaseId(time: now);
      if (redirectFrom == categoryNameN) {
        await isar.writeTxn(() async {
          await isar.categoryDatabaseModels.put(CategoryDatabaseModel(
            categoryName: addItemController.addedText.value,
            dateCreated: now,
            createdByUserId: appController.userId.value,
            categoryId: id,
          ));
          await isar.logCategoryDatabaseModels.put(LogCategoryDatabaseModel(
              categoryName: addItemController.addedText.value,
              dateCreated: now,
              createdByUserId: appController.userId.value,
              categoryId: id,
              dateModified: now,
              modifiedByUserId: appController.userId.value,
              addedFrom:
                  currentPage == addProductN ? addProductDC : editProductDC));
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
          await isar.unitOfMeasurementDatabaseModels
              .put(UnitOfMeasurementDatabaseModel(
            name: addItemController.addedText.value,
            dateCreated: now,
            createdByUserId: appController.userId.value,
            uomId: id,
          ));
          await isar.logUnitOfMeasurementDatabaseModels.put(
              LogUnitOfMeasurementDatabaseModel(
                  name: addItemController.addedText.value,
                  dateCreated: now,
                  createdByUserId: appController.userId.value,
                  uomId: id,
                  dateModified: now,
                  modifiedByUserId: appController.userId.value,
                  addedFrom: currentPage == addProductN
                      ? addProductDC
                      : editProductDC));
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
    } else if (redirectFrom == addCustomerN()) {
      AddCustomerController.to.onAddCustomerSaveButtonPressed();
    } else if (redirectFrom == addVendorN) {
      AddVendorController.to.onAddVendorSaveButtonPressed();
    } else if (redirectFrom == editCustomerN) {
      EditCustomerController.to.onEditCustomerSaveButtonPressed();
    } else if (redirectFrom == editVendorN) {
      EditVendorController.to.onEditVendorSaveButtonPressed();
    } else if (redirectFrom == dateSelectN) {
      onFilterSelect();
    }
    Get.back();
  }
}

titleToData({required String title, int? index}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  String? value;
  if (currentPage == salesN()) {
    return onSalesTitleToData(title: title, index: index);
  } else if (currentPage == addProductN) {
    return onAddProductGetData(title: title);
  } else if (currentPage == purchaseN()) {
    return onPurchaseTitleToData(title: title, index: index);
  } else if (currentPage == editProductN) {
    return getEditProductData(
      title: title,
    );
  } else if (currentPage == editCustomerN) {
    return getEditCustomerData(title: title);
  } else if (currentPage == editVendorN) {
    return getEditVendorData(title: title);
  } else if ([salesReportN, purchaseReportN,paymentReportN].contains(currentPage)) {
    return getReportSelectedDate(title: title);
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
  final Isar isar = Get.find();
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
  } else if (title == phoneNumberN()) {
    iconData = Icons.phone;
  } else if (title == addressN()) {
    iconData = Icons.location_on;
  } else if (title == contactPersonN) {
    iconData = Icons.person;
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

getSelectedDate() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    return SalesController.to.salesDate;
  } else if (currentPage == purchaseN()) {
    return PurchaseController.to.purchaseDate;
  }
}
