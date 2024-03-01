import 'package:get/get.dart';
// import 'package:my_inventory/core/model/product/product_model/main.dart';

class ProductListController extends GetxController {
  var selectedUnitOfMeasurement = 'Pcs'.obs;
  var categoryList = [
    'cat 1',
    'cat 2',
    'cat 3',
  ].obs;
  var emptyValue = ''.obs;
  var unitOfMeasurementList = ['Pcs', 'Kg', 'Lt'].obs;
  // var productInfo = ProductModel(
  //   name: '',
  //   description: '',
  //   categoryId: '',
  //   categoryName: '',
  //   productId: '',
  //   cost: -1,
  //   price: -1,
  //   createdByUserId: -1,
  //   dateCreated: DateTime.now(),
  //   dateModified: DateTime.now(),
  //   quantityOnHand: -1,
  //   reorderQuantity: -1,
  //   unitOfMeasurement: 'Pcs',
  // ).obs;

  onAddProductSaveButtonPressed() async {
    // DateTime now = DateTime.now();
    // final product = Product()
    //   ..name = productInfo.value.name
    //   ..description = productInfo.value.description
    //   ..categoryId = productInfo.value.categoryId
    //   ..categoryName = productInfo.value.categoryName
    //   ..productId = productInfo.value.productId
    //   ..cost = productInfo.value.cost
    //   ..price = productInfo.value.price
    //   ..createdByUserId = productInfo.value.createdByUserId
    //   ..dateCreated = now
    //   ..dateModified = now
    //   ..quantityOnHand = productInfo.value.quantityOnHand
    //   ..reorderQuantity = productInfo.value.reorderQuantity
    //   ..unitOfMeasurement = productInfo.value.unitOfMeasurement;
    //
    // await isar.writeTxn(() async {
    //   await isar.products.put(product);
    // });
  }
}
