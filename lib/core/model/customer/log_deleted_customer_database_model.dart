import 'package:isar/isar.dart';

part 'log_deleted_customer_database_model.g.dart';

@collection
class LogDeletedCustomerDatabaseModel {
  Id id = Isar.autoIncrement;
  String customerId;
  String companyId;
  String deletedByUserId;
  DateTime deletedDate;
  bool? isAppWriteSynced;

  LogDeletedCustomerDatabaseModel({
    required this.customerId,
    required this.companyId,
    required this.deletedByUserId,
    required this.deletedDate,
    this.isAppWriteSynced,
  });
}
