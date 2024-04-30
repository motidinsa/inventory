import 'package:isar/isar.dart';

part 'core_database_model.g.dart';

@collection
class CoreDatabaseModel {
  Id id = Isar.autoIncrement;
  String companyName;
  String companyId;
  String customerName;
  String customerId;
  bool isSignedIn;

  CoreDatabaseModel({
    required this.companyName,
    required this.companyId,
    required this.customerName,
    required this.customerId,
    required this.isSignedIn,
  });
}
