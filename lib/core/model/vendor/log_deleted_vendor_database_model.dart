import 'package:isar/isar.dart';

part 'log_deleted_vendor_database_model.g.dart';

@collection
class LogDeletedVendorDatabaseModel {
  Id id = Isar.autoIncrement;
  String vendorId;
  String companyId;
  String deletedByUserId;
  DateTime deletedDate;
  bool? isAppWriteSynced;

  LogDeletedVendorDatabaseModel({
    required this.vendorId,
    required this.companyId,
    required this.deletedByUserId,
    required this.deletedDate,
    this.isAppWriteSynced,
  });
}
