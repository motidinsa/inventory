import 'package:get/get.dart';


import 'package:my_inventory/core/model/product/product_model.dart';

class AddProductController extends GetxController {
  var selectedUnitOfMeasurement = 'Pcs'.obs;
  var productInfo = ProductName(
    name: '',
    description: '',
    categoryId: '',
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
