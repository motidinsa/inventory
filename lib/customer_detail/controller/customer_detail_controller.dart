import 'package:get/get.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

class CustomerDetailController extends GetxController {
  late CustomerDatabaseModel customerDatabaseModel;

  static CustomerDetailController get to => Get.find();
  double customerCredit = 0;
  // late List<SalesPaymentDatabaseModel> salesPaymentDatabaseModels;

  @override
  void onInit() {
    customerDatabaseModel = Get.arguments[0] as CustomerDatabaseModel;
    // salesPaymentDatabaseModels = isar.salesPaymentDatabaseModels.where()
    //     .filter()
    //     .customerIdEqualTo(customerDatabaseModel.customerId)
    //     .findAllSync();

    // customerCredit = salesPaymentDatabaseModels.fold(
    //     0, (previousValue, element) => previousValue + element.credit);
    super.onInit();
  }
}
