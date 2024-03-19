
import 'package:isar/isar.dart';

part 'sales_database_model.g.dart';

@collection
class SalesDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late String productId;
  late String salesId;
  late String groupSalesId;
  late DateTime salesDate;
  late DateTime dateCreated;
  DateTime? lastDateModified;
  String? lastModifiedByUserId;
  int? customerId;
  String? vendorId;
  late double quantity;
  late double totalAmount;
  late double price;
}