import 'package:isar/isar.dart';

part 'customer_credit_payment_history_database_model.g.dart';

@collection
class CustomerCreditPaymentHistoryDatabaseModel {
  Id id = Isar.autoIncrement;
  String customerId;
  DateTime datePaid;
  double cash;
  double transfer;
  double remainingCredit;
  bool? isAppWriteSynced;
  DateTime? lastDateModified;
  String? lastModifiedByUserId;
  String addedByUserId;

  CustomerCreditPaymentHistoryDatabaseModel({
    required this.customerId,
    required this.datePaid,
    required this.cash,
    required this.transfer,
    required this.remainingCredit,
    this.lastDateModified,
    this.lastModifiedByUserId,
    this.isAppWriteSynced,
    required this.addedByUserId,
  });
}
