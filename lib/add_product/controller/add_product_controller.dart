import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/main.dart';

class AddProductController extends GetxController {
  var isLocalSaveLoading = false.obs;
  var isSubmitButtonPressed = false.obs;
  var categoryListFoundResult = [].obs;
  var unitOfMeasurementListFoundResult = [].obs;
  final AppController appController = Get.find();

  @override
  void onInit() {
    var defaultUnit = isar.unitOfMeasurementDatabaseModels
        .filter()
        .nameEqualTo('Pcs')
        .findFirstSync();
    productInfo.update((val) {
      val?.unitOfMeasurementId = defaultUnit!.uomId;
      val?.unitOfMeasurementName = defaultUnit!.name;
    });
    appController.currentPages.add(addProductN);
    super.onInit();
  }

  var productInfo = ProductModel(
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
  ).obs;

  onAddProductSaveButtonPressed() async {
    isLocalSaveLoading(true);
    DateTime now = DateTime.now();
    final dbProduct = ProductDatabaseModel()
      ..productName = productInfo.value.name
      ..description = nullIfEmpty(productInfo.value.description)
      ..categoryId = nullIfEmpty(productInfo.value.categoryId)
      ..cost = getValidNumValue(productInfo.value.cost)
      ..price = getValidNumValue(productInfo.value.price)
      ..createdByUserId = appController.userId.value
      ..dateCreated = now
      ..quantityOnHand = getValidNumValue(productInfo.value.quantityOnHand)
      ..reorderQuantity = getValidNumValue(productInfo.value.reorderQuantity)
      ..unitOfMeasurementId = productInfo.value.unitOfMeasurementId
      ..localImagePath = productInfo.value.localImagePath
      ..userAssignedProductId =
          nullIfEmpty(productInfo.value.userAssignedProductId)
      ..productId = generateDatabaseId(time: now)
      ..userId = appController.userId.value;
    final logDbProduct = LogProductDatabaseModel()
      ..productName = productInfo.value.name
      ..description = nullIfEmpty(productInfo.value.description)
      ..categoryId = nullIfEmpty(productInfo.value.categoryId)
      ..cost = getValidNumValue(productInfo.value.cost)
      ..price = getValidNumValue(productInfo.value.price)
      ..createdByUserId = appController.userId.value
      ..dateCreated = now
      ..quantityOnHand = getValidNumValue(productInfo.value.quantityOnHand)
      ..reorderQuantity = getValidNumValue(productInfo.value.reorderQuantity)
      ..unitOfMeasurementId = productInfo.value.unitOfMeasurementId
      ..localImagePath = productInfo.value.localImagePath
      ..userAssignedProductId =
          nullIfEmpty(productInfo.value.userAssignedProductId)
      ..productId = generateDatabaseId(time: now)
      ..dateModified = now
      ..modifiedByUserId = appController.userId.value
      ..userId = appController.userId.value;

    await isar.writeTxn(() async {
      await isar.productDatabaseModels.put(dbProduct);
      await isar.logProductDatabaseModels.put(logDbProduct);
    });
    isLocalSaveLoading(false);
    Get.back();
  }
}
