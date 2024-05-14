import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/ui/add_item.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../../add_purchase/controller/add_purchase_controller.dart';

onAddIconPressed({String? type}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.purchase) {
    AddPurchaseController addPurchaseController = Get.find();
    // addPurchaseController.addPurchaseProduct();
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
