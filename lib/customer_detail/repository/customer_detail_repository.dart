import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/customer/log_deleted_customer_database_model.dart';
import 'package:my_inventory/core/model/sales/customer_credit_payment_history_database_model.dart';

import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import '../../core/functions/helper_functions.dart';

class CustomerDetailRepository {
  static final Isar _isar = Get.find();

  static deleteCustomer() async {
    await _isar.writeTxn(() async {
      CustomerDatabaseModel customerDatabaseModel =
          CustomerDetailController.to.customerDatabaseModel;
      await _isar.logDeletedCustomerDatabaseModels
          .put(LogDeletedCustomerDatabaseModel(
        customerId: customerDatabaseModel.customerId,
        companyId: customerDatabaseModel.companyId,
        deletedByUserId: AppController.to.userId,
        deletedDate: DateTime.now(),
      ));

      await _isar.customerDatabaseModels
          .delete(CustomerDetailController.to.customerDatabaseModel.id);
    });
  }

  static getCustomerCredit() async {
    // CustomerDatabaseModel customerDatabaseModel =
    //     Get.arguments[0] as CustomerDatabaseModel;
    // salesPaymentDatabaseModels = isar.salesPaymentDatabaseModels.where()
    //     .filter()
    //     .customerIdEqualTo(customerDatabaseModel.customerId)
    //     .findAllSync();
    // await _isar.writeTxn(() async {
    //   await _isar.customerDatabaseModels
    //       .delete(CustomerDetailController.to.customerDatabaseModel.id);
    // });
  }

  static List<CustomerCreditPaymentHistoryDatabaseModel>
      getCustomerCreditPayHistory() {
    var listOfCustomerPaidCredits = _isar
        .customerCreditPaymentHistoryDatabaseModels
        .where()
        .filter()
        .customerIdEqualTo(
            CustomerDetailController.to.customerDatabaseModel.customerId)
        .findAllSync();
    listOfCustomerPaidCredits.sort((a, b) => b.datePaid.compareTo(a.datePaid));
    return listOfCustomerPaidCredits;
  }

  static editCustomerCredit() async {
    CustomerDetailController customerDetailController =
        CustomerDetailController.to;
    CustomerDatabaseModel customerDatabaseModel =
        customerDetailController.customerDatabaseModel;
    double totalPaidCredit =
        double.parse(customerDetailController.cashCreditPaid) +
            double.parse(customerDetailController.transferCreditPaid);
    customerDatabaseModel.totalCreditAmount =
        customerDatabaseModel.totalCreditAmount! - totalPaidCredit;
    await _isar.writeTxn(() async {
      await _isar.customerDatabaseModels.put(customerDatabaseModel);
      await _isar.customerCreditPaymentHistoryDatabaseModels
          .put(CustomerCreditPaymentHistoryDatabaseModel(
        customerId: customerDatabaseModel.customerId,
        datePaid: customerDetailController.customerPaymentDate,
        cash: customerDetailController.cashCreditPaid.isNotEmpty
            ? double.parse(customerDetailController.cashCreditPaid)
            : 0,
        transfer: customerDetailController.transferCreditPaid.isNotEmpty
            ? double.parse(customerDetailController.transferCreditPaid)
            : 0,
        remainingCredit: customerDatabaseModel.totalCreditAmount!,
        addedByUserId: AppController.to.userId,
      ));
    });
  }
}
