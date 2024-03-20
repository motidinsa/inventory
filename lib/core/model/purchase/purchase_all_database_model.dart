import 'package:isar/isar.dart';

part 'purchase_all_database_model.g.dart';

@collection
class PurchaseAllDatabaseModel {
  Id id = Isar.autoIncrement;
  String productId;
  String purchaseId;
  DateTime purchaseDate;
  DateTime dateCreated;
  DateTime? lastDateModified;
  String? lastModifiedByUserId;
  int? customerId;
  String? vendorId;
  double quantity;
  double totalAmount;
  double cost;

  PurchaseAllDatabaseModel({
    required this.productId,
    required this.purchaseId,
    required this.purchaseDate,
    required this.dateCreated,
    this.lastDateModified,
    this.lastModifiedByUserId,
    this.customerId,
    this.vendorId,
    required this.quantity,
    required this.totalAmount,
    required this.cost,
  });
}
