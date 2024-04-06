import 'package:isar/isar.dart';

part 'sales_payment_database_model.g.dart';

@collection
class SalesPaymentDatabaseModel {
  Id id = Isar.autoIncrement;
  double cash;
  double transfer;
  double credit;
  double total;
  String customerId;
  String salesPaymentId;
  String groupSalesId;
  bool? isAppWriteSynced;

  SalesPaymentDatabaseModel({
    required this.cash,
    required this.transfer,
    required this.credit,
    required this.total,
    required this.customerId,
    required this.salesPaymentId,
    required this.groupSalesId,
    this.isAppWriteSynced,
  });
}
