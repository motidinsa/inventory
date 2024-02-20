import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

import 'package:my_inventory/main.dart';

import '../../core/constants/name_constants.dart';
import '../../core/model/product/product_model.dart';

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
