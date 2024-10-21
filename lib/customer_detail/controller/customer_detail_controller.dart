import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import '../../core/model/sales/sales_payment_database_model.dart';

class CustomerDetailController extends GetxController {
  late CustomerDatabaseModel customerDatabaseModel;

  static CustomerDetailController get to => Get.find();
  late List<SalesPaymentDatabaseModel> salesPaymentDatabaseModels;
  DateTime customerPaymentDate= DateTime.now();
  // AppController.to = RouteName.customerDetail;
  @override
  void onInit() {
    AppController.to.currentRoute = RouteName.customerDetail;
    customerDatabaseModel = Get.arguments;
    salesPaymentDatabaseModels = Get.find<Isar>().salesPaymentDatabaseModels.where()
        .filter()
        .customerIdEqualTo(customerDatabaseModel.customerId).sortByDateAddedDesc()
        .findAllSync();

    // customerCredit = salesPaymentDatabaseModels.fold(
    //     0, (previousValue, element) => previousValue + element.credit);
    super.onInit();
  }
}
