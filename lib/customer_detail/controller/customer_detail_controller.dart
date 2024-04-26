import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_payment_database_model.dart';

class CustomerDetailController extends GetxController {
  // final int isarId;
  // final String customerId;
  late CustomerDatabaseModel customerDatabaseModel;
  //
  // CustomerDetailController({required this.isarId, required this.customerId});

  static CustomerDetailController get to => Get.find();
  double customerCredit = 0;

  @override
  void onInit() {
    AppController.to.currentRoutes.add(customerDetailN);
    final Isar isar = Get.find();
    customerDatabaseModel = Get.arguments[0] as CustomerDatabaseModel;
    customerCredit = isar.salesPaymentDatabaseModels
        .filter()
        .customerIdEqualTo(customerDatabaseModel.customerId)
        .findAllSync()
        .fold(0, (previousValue, element) => previousValue + element.credit);
    print(customerCredit);
    super.onInit();
  }
}
