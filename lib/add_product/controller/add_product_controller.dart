import 'package:get/get.dart';

import 'package:my_inventory/core/model/product/product_model.dart';

class AddProductController extends GetxController {
  var selectedUnitOfMeasurement = 'Pcs'.obs;
  var categoryList = [
    'cat 1',
    'cat 2',
    'cat 3',
  ].obs;
  var unitOfMeasurementList = ['Pcs', 'Kg', 'Lt'].obs;
  var productInfo = Product(
    name: '',
    description: '',
    categoryId: '',
    categoryName: '',
    productId: '',
    cost: -1,
    price: -1,
    createdByUserId: -1,
    dateCreated: DateTime.now(),
    dateModified: DateTime.now(),
    quantityOnHand: -1,
    reorderQuantity: -1,
    unitOfMeasurement: 'Pcs',
  ).obs;
}
