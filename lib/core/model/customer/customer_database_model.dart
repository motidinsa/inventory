import 'package:isar/isar.dart';

part 'customer_database_model.g.dart';

@collection
class CustomerDatabaseModel {
  Id id = Isar.autoIncrement;
  String name;
  String customerId;
  String? phone;
  String? address;
  String? city;
  String? email;
  DateTime dateCreated;
  DateTime? lastDateModified;
  DateTime? lastModifiedByUserId;
  bool? isAppWriteSynced;

  CustomerDatabaseModel({
    required this.name,
    required this.customerId,
    this.phone,
    this.address,
    this.city,
    this.email,
    required this.dateCreated,
    this.lastDateModified,
    this.lastModifiedByUserId,
    this.isAppWriteSynced,
  });
}
