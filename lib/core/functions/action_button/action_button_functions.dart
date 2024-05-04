import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/signup/functions/signup_functions.dart';

import '../../../add_customer/functions/add_customer_functions.dart';
import '../../../add_product/controller/add_product_controller.dart';
import '../../../add_vendor/controller/add_vendor_controller.dart';
import '../../../customer_detail/functions/customer_detail_functions.dart';
import '../../../edit_customer/controller/edit_customer_controller.dart';
import '../../../edit_product/controller/edit_product_controller.dart';
import '../../../edit_vendor/controller/edit_vendor_controller.dart';
import '../../../product_detail/functions/product_detail_functions.dart';
import '../../../purchase/controller/purchase_controller.dart';
import '../../../sales/functions/sales_functions.dart';
import '../../../vendor_detail/functions/vendor_detail_functions.dart';
import '../../constants/database_constants.dart';
import '../../constants/name_constants.dart';
import '../../controller/add_item_controller.dart';
import '../../controller/app_controller.dart';
import '../../routes/route_names.dart';
import '../core_functions.dart';
import '../helper_functions.dart';
import '../report/report_functions.dart';

onActionButtonPressed({String? redirectFrom}) async {
  // await unFocus();
  final Isar isar = Get.find();
  String currentRoute = Get.currentRoute;

  if (redirectFrom == productDetailN) {
    deleteProduct();
  }  else if (redirectFrom == vendorDetailN) {
    deleteVendor();
  } else if ([categoryNameN, uomNameN].contains(redirectFrom)) {
    AddItemController addItemController = Get.find();
    if (addItemController.formKey.currentState!.validate()) {
      final AppController appController = Get.find();
      String currentRoute = Get.currentRoute;
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
              addedFrom: currentRoute == RouteName.addProduct
                  ? addProductDC
                  : editProductDC));
        });
        if (currentRoute == RouteName.addProduct) {
          AddProductController addProductController = Get.find();
          addProductController.categoryListFoundResult(
              isar.categoryDatabaseModels.where().findAllSync());
        } else if (currentRoute == RouteName.editProduct) {
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
                  addedFrom: currentRoute == RouteName.addProduct
                      ? addProductDC
                      : editProductDC));
        });
        if (currentRoute == RouteName.addProduct) {
          AddProductController addProductController = Get.find();
          addProductController.unitOfMeasurementListFoundResult(
              isar.unitOfMeasurementDatabaseModels.where().findAllSync());
        } else if (currentRoute == RouteName.editProduct) {
          EditProductController editProductController = Get.find();
          editProductController.unitOfMeasurementListFoundResult(
              isar.unitOfMeasurementDatabaseModels.where().findAllSync());
        }
      }
      Get.back();
    } else {
      return;
    }
  } else if (currentRoute == RouteName.signUp) {
    onSignupButtonPressed();
  }else if (currentRoute == RouteName.customerDetail) {
    showAlertDialogConfirmation();
  } else if (AppController.to.formKey.currentState!.validate()) {
    if (redirectFrom == addProductN) {
      AddProductController addProductController = Get.find();
      addProductController.isSubmitButtonPressed(true);
      addProductController.onAddProductSaveButtonPressed();
    } else if (redirectFrom == salesN) {
      saveSalesProductToDB();
    } else if (redirectFrom == purchaseN) {
      PurchaseController purchaseController = Get.find();
      purchaseController.savePurchaseProductToDB();
    } else if (redirectFrom == editProductN) {
      EditProductController editProductController = Get.find();
      editProductController.onEditProductSaveButtonPressed();
    }  else if (redirectFrom == addVendorN) {
      AddVendorController.to.onAddVendorSaveButtonPressed();
    } else if (redirectFrom == editCustomerN) {
      EditCustomerController.to.onEditCustomerSaveButtonPressed();
    } else if (redirectFrom == editVendorN) {
      EditVendorController.to.onEditVendorSaveButtonPressed();
    } else if (redirectFrom == dateSelectN) {
      onFilterSelect();
    }
    else if (currentRoute == RouteName.addCustomer) {
      onAddCustomerSaveButtonPressed();
    }
    // Get.back();
  }
}
