import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/database/isar_init.dart';

import 'package:inventory/core/model/customer/customer_database_model.dart';
import 'package:inventory/core/model/sales/customer_credit_payment_history_database_model.dart';
import 'package:inventory/core/routes/route_names.dart';

import '../../core/model/sales/sales_payment_database_model.dart';

class CustomerDetailController extends GetxController {
  late CustomerDatabaseModel customerDatabaseModel;

  static CustomerDetailController get to => Get.find();
  late List<SalesPaymentDatabaseModel> salesPaymentDatabaseModels;
  DateTime customerPaymentDate = DateTime.now();
  String cashCreditPaid = '';
  String transferCreditPaid = '';
  bool isLoading = false;
  late bool hasCreditPayHistory;

  // AppController.to = RouteName.customerDetail;
  @override
  void onInit() {
    AppController.to.currentRoute = RouteName.customerDetail;
    customerDatabaseModel = Get.arguments;
    salesPaymentDatabaseModels = Get.find<Isar>()
        .salesPaymentDatabaseModels
        .where()
        .filter()
        .customerIdEqualTo(customerDatabaseModel.customerId)
        .sortByDateAddedDesc()
        .findAllSync();
    hasCreditPayHistory = Get.find<Isar>()
            .customerCreditPaymentHistoryDatabaseModels
            .where()
            .filter()
            .customerIdEqualTo(customerDatabaseModel.customerId)
            .countSync() >
        0;
    // customerCredit = salesPaymentDatabaseModels.fold(
    //     0, (previousValue, element) => previousValue + element.credit);
    super.onInit();
  }
}
