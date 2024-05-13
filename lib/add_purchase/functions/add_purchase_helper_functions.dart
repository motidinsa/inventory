import '../../core/functions/helper_functions.dart';
import '../controller/add_purchase_controller.dart';

getPurchaseAlertDialogProductLength() {
  return AddPurchaseController.to.searchProductFoundResult.length;
}

getPurchaseSubtotal() {
  double total = 0;
  for (var element in AddPurchaseController.to.purchaseModels) {
    if (isNumeric(element.cost)) {
      total += double.parse(element.cost);
    }
  }
  return total.toString();
}

getPurchaseTotal() {
  double total = 0;
  for (var element in AddPurchaseController.to.purchaseModels) {
    total += element.totalAmount;
  }
  return total.toString();
}