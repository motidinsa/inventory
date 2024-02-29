import 'package:get/get.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import '../../core/constants/name_constants.dart';
import '../../core/model/product/product_model.dart';

onSalesTextFieldChange({String? title,
  required String data,
  int? index,}){
  if(title == searchProductsN()){
    SalesController salesController = Get.find();
    salesController.searchProductFoundResult(salesController.products
        .where((product) =>
        product.name.toLowerCase().contains(data.toLowerCase()))
        .toList());
  }else if(title == quantityN()){
    SalesController salesController = Get.find();
    salesController.salesModels[index!].update((sales) {
      if (data.isNotEmpty) {
        sales?.quantity = int.parse(data);
        sales?.totalAmount = int.parse(data) * sales.price;
      } else {
        sales?.quantity = 0;
        sales?.totalAmount = 0;
      }
    });
  }
}
onSalesProductFocusChange({
  required String title,
  required String data,
}) {
  final SalesController salesController = Get.find();
  if (title == discountN()) {
    salesController.discount(data);
  }
}

onSalesSearchProductAlertDialogOptionSelect(
    {required ProductModel productModel, required int index}) {
  final SalesController salesController = Get.find();
  salesController.salesModels[index].update((sales) {
    sales?.productName = productModel.name;
    sales?.productId = productModel.id;
    sales?.price = productModel.price;
    if(sales?.quantity!=0){
      sales?.totalAmount =sales.quantity* productModel.price;
    }
  });
}

getSalesAlertDialogProductLength() {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult.length;
}

getSalesSubtotal() {
  SalesController salesController = Get.find();
  double total = 0;
  for (var element in salesController.salesModels) {
    total += element.value.price;
  }
  return total.toString();
}

getSalesTotal() {
  SalesController salesController = Get.find();
  double total = 0;
  for (var element in salesController.salesModels) {
    total += element.value.totalAmount;
  }
  return total.toString();
}
