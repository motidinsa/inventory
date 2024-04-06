import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/main.dart';

class CustomerDetailController extends GetxController {
  final int isarId;
  final String customerId;
  late CustomerDatabaseModel customerDatabaseModel;
  CustomerDetailController({required this.isarId, required this.customerId});

  static CustomerDetailController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(customerDetailN);
    customerDatabaseModel = isar.customerDatabaseModels.getSync(isarId)!;
    super.onInit();
  }
}
