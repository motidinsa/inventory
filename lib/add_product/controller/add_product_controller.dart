import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
// import 'package:my_inventory/core/model/product/product_model/main.dart';

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
    // var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    // var uomBox =
    //     Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    // var defaultUnit =
    //     uomBox.values.firstWhere((element) => element.name == 'Pcs');
    // productInfo.update((val) {
    //   val?.unitOfMeasurementId = defaultUnit.uomId;
    // });
    // productInfo.update((val) {
    //   val?.unitOfMeasurementName = defaultUnit.name;
    // });
    // categoryListFoundResult(categoryBox.values.toList());
    // unitOfMeasurementListFoundResult(uomBox.values.toList());
    super.onInit();
  }

  var productInfo = ProductModel(
    name: '',
    categoryId: '',
    categoryName: '',
    userAssignedProductId: '',
    cost: '',
    price: '',
    dateCreated: DateTime.now(),
    lastDateModified: DateTime.now(),
    quantityOnHand: '',
    reorderQuantity: '',
    unitOfMeasurementId: '',
    unitOfMeasurementName: '',
    id: 0,
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
      ..dateCreated = productInfo.value.dateCreated
      ..lastDateModified = productInfo.value.lastDateModified
      ..quantityOnHand = getValidNumValue(productInfo.value.quantityOnHand)
      ..reorderQuantity = getValidNumValue(productInfo.value.reorderQuantity)
      ..unitOfMeasurementId = productInfo.value.unitOfMeasurementId
      ..localImagePath = productInfo.value.localImagePath
      ..userAssignedProductId =
          nullIfEmpty(productInfo.value.userAssignedProductId)
      ..productId = generateDatabaseId(time: now);

    await isar.writeTxn(() async {
      await isar.productDatabaseModels.put(dbProduct);
    });
    // if (productInfo.value.localImagePath != null) {
    //   try {
    //     await Gal.putImage(productInfo.value.localImagePath!,
    //         album: appNameN());
    //     File(productInfo.value.localImagePath!).delete();
    //   } on GalException catch (e) {
    //     log(e.type.message);
    //   }
    // }
    isLocalSaveLoading(false);
    Get.back();
  }
}
