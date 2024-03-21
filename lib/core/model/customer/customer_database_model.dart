import 'package:isar/isar.dart';

part 'customer_database_model.g.dart';

@collection
class CustomerDatabaseModel {
  Id id = Isar.autoIncrement;
  String name;
  String? phone;
  String? address;
  String? city;
  String? email;

  CustomerDatabaseModel({
    required this.name,
    this.phone,
    this.address,
    this.city,
    this.email,
  });
}
