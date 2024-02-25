import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

// import 'package:my_inventory/core/model/product/product_model/main.dart';

import 'package:my_inventory/core/model/product/product_model.dart';

class AddProductController extends GetxController {
  var selectedUnitOfMeasurement = 'Pcs'.obs;
  var categoryList = [
    'cat 1',
    'cat 2',
    'cat 3',
  ].obs;
  var unitOfMeasurementList = ['Pcs', 'Kg', 'Lt'].obs;
  var productInfo = ProductModel(
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
          id: '')
      .obs;

  onAddProductSaveButtonPressed() async {
    DateTime now = DateTime.now();
    var productsBox = Hive.box<ProductModel>('products');
    final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    String key = dateFormatter.format(now);
    await productsBox.put(
      key,
      ProductModel(
        name: productInfo.value.name,
        description: productInfo.value.description,
        categoryId: productInfo.value.categoryId,
        categoryName: productInfo.value.categoryName,
        productId: productInfo.value.productId,
        cost: productInfo.value.cost,
        price: productInfo.value.price,
        createdByUserId: productInfo.value.createdByUserId,
        dateCreated: productInfo.value.dateCreated,
        dateModified: productInfo.value.dateModified,
        quantityOnHand: productInfo.value.quantityOnHand,
        reorderQuantity: productInfo.value.reorderQuantity,
        unitOfMeasurement: productInfo.value.unitOfMeasurement,
        id: key,
      ),
    );
  }
}
