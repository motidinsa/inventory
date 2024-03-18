import 'package:isar/isar.dart';

part 'purchase_database_model.g.dart';

@collection
class PurchaseDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late int productId;
  late int purchaseId;
  late DateTime purchaseDate;
  late DateTime dateCreated;
  DateTime? lastDateModified;
  int? customerId;
  String? vendorId;
  late double quantity;
  late double totalAmount;
  late double cost;

}
