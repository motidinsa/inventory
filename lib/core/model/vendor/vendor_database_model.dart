import 'package:isar/isar.dart';

part 'vendor_database_model.g.dart';

@collection
class VendorDatabaseModel {
  Id id = Isar.autoIncrement;
  String name;
  String vendorId;
  String companyId;
  String addedByUserId;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;
  String? contactPerson;
  DateTime dateCreated;
  DateTime? lastModifiedDate;
  String? lastModifiedByUserId;
  bool? isAppWriteSynced;

  VendorDatabaseModel({
    required this.name,
    required this.vendorId,
    required this.companyId,
    required this.addedByUserId,
    this.phoneNumber,
    this.address,
    this.city,
    this.email,
    required this.dateCreated,
    this.lastModifiedDate,
    this.isAppWriteSynced,
    this.lastModifiedByUserId,
    this.contactPerson,
  });
}
