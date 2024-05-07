import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import 'package:my_inventory/core/constants/database_constants.dart';

class AddProductController extends GetxController {
  var isLoading = false;
  var isSubmitButtonPressed = false.obs;

  ProductModel productModel = ProductModel(
    name: '',
    categoryId: '',
    categoryName: '',
    userAssignedProductId: '',
    cost: '',
    price: '',
    quantityOnHand: '',
    reorderQuantity: '',
    unitOfMeasurementId: '',
    unitOfMeasurementName: '',
  );

  List<CategoryDatabaseModel> categoryListFoundResult = [];
  List<UnitOfMeasurementDatabaseModel> unitOfMeasurementListFoundResult = [];
  final AppController appController = Get.find();

  static AddProductController get to => Get.find();

  @override
  void onInit() {
    var defaultUnit = Get.find<Isar>().unitOfMeasurementDatabaseModels
        .filter()
        .nameEqualTo('Pcs')
        .findFirstSync();
    // productInfo.update((val) {
    //   val?.unitOfMeasurementId = defaultUnit!.uomId;
    //   val?.unitOfMeasurementName = defaultUnit!.name;
    // });
    super.onInit();
  }

  onAddProductSaveButtonPressed() async {
    // Isar isar = Get.find();
    // isLocalSaveLoading(true);
    // DateTime now = DateTime.now();
    // final dbProduct = ProductDatabaseModel(
    //   productName: productInfo.value.name,
    //   description: nullIfEmpty(productInfo.value.description),
    //   categoryId: nullIfEmpty(productInfo.value.categoryId),
    //   cost: getValidNumValue(productInfo.value.cost),
    //   price: getValidNumValue(productInfo.value.price),
    //   createdByUserId: appController.userId.value,
    //   dateCreated: now,
    //   quantityOnHand: getValidNumValue(productInfo.value.quantityOnHand),
    //   reorderQuantity: getValidNumValue(productInfo.value.reorderQuantity),
    //   unitOfMeasurementId: productInfo.value.unitOfMeasurementId,
    //   localImagePath: productInfo.value.localImagePath,
    //   userAssignedProductId:
    //       nullIfEmpty(productInfo.value.userAssignedProductId),
    //   productId: generateDatabaseId(time: now),
    // );
    //
    // final logDbProduct = LogProductDatabaseModel(
    //   productName: productInfo.value.name,
    //   description: nullIfEmpty(productInfo.value.description),
    //   categoryId: nullIfEmpty(productInfo.value.categoryId),
    //   cost: getValidNumValue(productInfo.value.cost),
    //   price: getValidNumValue(productInfo.value.price),
    //   createdByUserId: appController.userId.value,
    //   dateCreated: now,
    //   quantityOnHand: getValidNumValue(productInfo.value.quantityOnHand),
    //   reorderQuantity: getValidNumValue(productInfo.value.reorderQuantity),
    //   unitOfMeasurementId: productInfo.value.unitOfMeasurementId,
    //   localImagePath: productInfo.value.localImagePath,
    //   userAssignedProductId:
    //       nullIfEmpty(productInfo.value.userAssignedProductId),
    //   productId: generateDatabaseId(time: now),
    //   dateModified: now,
    //   modifiedByUserId: appController.userId.value,
    //   addedFrom: addProductDC,
    // );
    //
    // await isar.writeTxn(() async {
    //   await isar.productDatabaseModels.put(dbProduct);
    //   await isar.logProductDatabaseModels.put(logDbProduct);
    // });
    // isLocalSaveLoading(false);
    // Get.back();
  }
}
