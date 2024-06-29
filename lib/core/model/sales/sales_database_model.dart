import 'package:isar/isar.dart';

part 'sales_database_model.g.dart';

@collection
class SalesDatabaseModel {
  Id id = Isar.autoIncrement;
  String productId;
  String salesId;
  DateTime salesDate;
  DateTime dateCreated;
  DateTime? lastDateModified;
  String? lastModifiedByUserId;
  String? customerId;
  double quantity;
  double price;
  bool? isAppWriteSynced;
  String salesPaymentId;
  String addedByUserId;
  String companyId;

  SalesDatabaseModel({
    required this.productId,
    required this.salesId,
    required this.salesDate,
    required this.dateCreated,
    this.lastDateModified,
    this.lastModifiedByUserId,
    this.customerId,
    required this.quantity,
    required this.price,
    required this.salesPaymentId,
    this.isAppWriteSynced,
    required this.addedByUserId,
    required this.companyId,
  });
}
