import 'package:isar/isar.dart';

part 'customer_database_model.g.dart';

@collection
class CustomerDatabaseModel {
  Id id = Isar.autoIncrement;
  String name;
  String customerId;
  String addedByUserId;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;
  double? totalCreditAmount;
  DateTime dateCreated;
  DateTime? lastModifiedDate;
  String? lastModifiedByUserId;
  bool? isAppWriteSynced;

  CustomerDatabaseModel({
    required this.name,
    required this.customerId,
    required this.addedByUserId,
    this.phoneNumber,
    this.address,
    this.city,
    this.email,
    this.totalCreditAmount,
    required this.dateCreated,
    this.lastModifiedDate,
    this.isAppWriteSynced,
    this.lastModifiedByUserId,
  });
}
