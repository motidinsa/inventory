import 'package:isar/isar.dart';

part 'log_customer_database_model.g.dart';

@collection
class LogCustomerDatabaseModel {
  Id id = Isar.autoIncrement;
  String?  objectId ;
  String name;
  String customerId;
  String companyId;
  String addedByUserId;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;
  DateTime dateCreated;
  DateTime? lastModifiedDate;
  String? lastModifiedByUserId;
  bool? isAppWriteSynced;

  LogCustomerDatabaseModel({
     this.objectId,
    required this.name,
    required this.customerId,
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
  });
}
