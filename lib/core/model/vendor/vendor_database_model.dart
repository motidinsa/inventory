import 'package:isar/isar.dart';

part 'vendor_database_model.g.dart';

@collection
class VendorDatabaseModel {
  Id id = Isar.autoIncrement;

  String? name;
  String? phone;
  String? address;
  String? city;
  String? email;
  String? contactPerson;
}