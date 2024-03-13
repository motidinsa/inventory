import 'package:get/get.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';

import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';

getAlertDialogLength({String? title}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == salesN()) {
    return getSalesAlertDialogProductLength();
  } else if (currentPage == addProductN) {
    return getAddProductAlertDialogLength(title: title!);
  } else if (currentPage == editProductN) {
    return getEditProductAlertDialogLength(title: title!);
  } else if (currentPage == purchaseN()) {
    return getPurchaseAlertDialogProductLength();
  }
}

onAlertDialogOptionSelect(
    {required String title,
    required String id,
    ProductDatabaseModel? productModel,
    String? data,
    int? index}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == salesN()) {
    onSalesSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  } else if (currentPage == addProductN) {
    onAddProductAlertDialogOptionSelect(title: title, data: data!, id: id);
  } else if (currentPage == editProductN) {
    onEditProductAlertDialogOptionSelect(title: title, data: data!, id: id);
  } else if (currentPage == purchaseN()) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  }
  Get.back();
}
