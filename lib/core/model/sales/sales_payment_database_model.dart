import 'package:isar/isar.dart';

part 'sales_payment_database_model.g.dart';

@collection
class SalesPaymentDatabaseModel {
  Id id = Isar.autoIncrement;
  double cash;
  double transfer;
  double credit;
  double total;
  double discount;
  DateTime dateAdded;
  DateTime? dateModified;
  String addedByUserId;
  String? modifiedByUserId;
  String? customerId;
  String salesPaymentId;
  bool? isAppWriteSynced;

  SalesPaymentDatabaseModel({
    required this.cash,
    required this.transfer,
    required this.credit,
    required this.total,
    required this.discount,
    this.customerId,
    required this.salesPaymentId,
    this.isAppWriteSynced,
    required this.addedByUserId,
    required this.dateAdded,
    this.dateModified,
    this.modifiedByUserId,
  });
}
