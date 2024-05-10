import 'package:isar/isar.dart';

part 'log_vendor_database_model.g.dart';

@collection
class LogVendorDatabaseModel {
  Id id = Isar.autoIncrement;
  String? objectId;
  String name;
  String vendorId;
  String addedByUserId;
  String companyId;
  String? phoneNumber;
  String? contactPerson;
  String? address;
  String? city;
  String? email;
  DateTime dateCreated;
  DateTime? lastModifiedDate;
  String? lastModifiedByUserId;
  bool? isAppWriteSynced;

  LogVendorDatabaseModel({
    this.objectId,
    required this.name,
    required this.vendorId,
    required this.companyId,
    required this.addedByUserId,
    this.phoneNumber,
    this.contactPerson,
    this.address,
    this.city,
    this.email,
    required this.dateCreated,
    this.lastModifiedDate,
    this.isAppWriteSynced,
    this.lastModifiedByUserId,
  });
}
