import 'package:get/get.dart';
import 'package:inventory/add_product/controller/add_product_controller.dart';
import 'package:inventory/core/routes/route_names.dart';
import 'package:inventory/core/ui/add_item.dart';
import 'package:inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';

import 'package:inventory/core/functions/helper_functions.dart';

import '../../add_purchase/controller/add_purchase_controller.dart';
import '../../add_purchase/functions/add_purchase_functions.dart';
import '../../add_sales/functions/add_sales_functions.dart';

onAddIconPressed({String? type}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addPurchase) {
    onPurchaseAddIconPressed();
  } else if (currentRoute == RouteName.addSales) {
    addSalesProduct();
  } else {
    Get.back();
    Get.dialog(
      AddItem(
        type: type!,
      ),
    ).then((value) {
      Get.dialog(
        GetBuilder<AddProductController>(builder: (context) {
          return AlertDialogOptionSelect(
            title: type,
          );
        }),
      ).then((value) => unFocus());
    });
  }
}
