import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import 'package:my_inventory/add_product/repository/add_product_repository.dart';

class AddProductController extends GetxController {
  bool isLoading = false;
  bool isSubmitButtonPressed = false;
  late bool isCategoryEmpty;
  late bool isUnitOfMeasurementEmpty;
  ProductModel productModel = ProductModel(
    name: '',
    categoryName: '',
    userAssignedProductId: '',
    cost: '',
    price: '',
    quantityOnHand: '0',
    reorderQuantity: '',
    unitOfMeasurementName: '',
    unitOfMeasurementId: '',
  );
  List<CategoryDatabaseModel> categoryListFoundResult = [];
  List<UnitOfMeasurementDatabaseModel> unitOfMeasurementListFoundResult = [];
  final AppController appController = Get.find();

  static AddProductController get to => Get.find();

  @override
  void onInit() {
    isCategoryEmpty = AddProductRepository.getCategoryCount() == 0;
    isUnitOfMeasurementEmpty =
        AddProductRepository.getUnitOfMeasurementCount() == 0;
    UnitOfMeasurementDatabaseModel? defaultUnitOfMeasurement =
        AddProductRepository.getDefaultUnitOfMeasurement();
    productModel.unitOfMeasurementId = defaultUnitOfMeasurement?.uomId ?? '';
    productModel.unitOfMeasurementName = defaultUnitOfMeasurement?.name ?? '';
    super.onInit();
  }
}
