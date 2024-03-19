import 'package:isar/isar.dart';

part 'sales_database_model.g.dart';

@collection
class SalesDatabaseModel {
  Id id = Isar.autoIncrement;
  String productId;
  String salesId;
  String groupSalesId;
  DateTime salesDate;
  DateTime dateCreated;
  DateTime? lastDateModified;
  String? lastModifiedByUserId;
  int? customerId;
  String? vendorId;
  double quantity;
  double totalAmount;
  double price;
  bool? isAppWriteSynced;

  SalesDatabaseModel({
    required this.productId,
    required this.salesId,
    required this.groupSalesId,
    required this.salesDate,
    required this.dateCreated,
    this.lastDateModified,
    this.lastModifiedByUserId,
    this.customerId,
    this.vendorId,
    required this.quantity,
    required this.totalAmount,
    required this.price,
  });
}
