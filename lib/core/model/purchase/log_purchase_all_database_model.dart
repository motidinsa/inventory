import 'package:isar/isar.dart';

part 'log_purchase_all_database_model.g.dart';

@collection
class LogPurchaseAllDatabaseModel {
  Id id = Isar.autoIncrement;
  String productId;
  String purchaseId;
  DateTime purchaseDate;
  DateTime dateCreated;
  DateTime? lastDateModified;
  String? lastModifiedByUserId;
  String companyId;
  String addedByUserId;
  String? vendorId;
  double quantity;
  double cost;

  LogPurchaseAllDatabaseModel({
    required this.productId,
    required this.purchaseId,
    required this.purchaseDate,
    required this.dateCreated,
    this.lastDateModified,
    this.lastModifiedByUserId,
    required this.companyId,
    required this.addedByUserId,
    this.vendorId,
    required this.quantity,
    required this.cost,
  });
}
