import 'package:get/get.dart';

import '../../../add_product/functions/add_product_functions.dart';
import '../../../purchase/functions/purchase_functions.dart';
import '../../../sales/functions/sales_functions.dart';
import '../../constants/name_constants.dart';
import '../../model/product/product_model.dart';

getAlertDialogLength({required String currentPage, String? title}) {
  if (currentPage == salesN()) {
    return getSalesAlertDialogProductLength();
  } else if (currentPage == addProductN()) {
    return getAddProductAlertDialogLength(title: title!);
  } else if (currentPage == purchaseN()) {
    return getPurchaseAlertDialogProductLength();
  }
}

onAlertDialogOptionSelect(
    {required String title,
      required String currentPage,
      ProductModel? productModel,
      String? data,
      int? index}) {
  if (currentPage == salesN()) {
    onSalesSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  } else if (currentPage == addProductN()) {
    onAddProductAlertDialogOptionSelect(title: title, data: data!);
  } else if (currentPage == purchaseN()) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  }
  Get.back();
}