import 'package:isar/isar.dart';

part 'log_product_database_model.g.dart';

@collection
class LogProductDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late String productId;
  late String productName;
  String? description;
  String? categoryId;
  String? userAssignedProductId;
  late double cost;
  late double price;
  late double quantityOnHand;
  late double reorderQuantity;
  late String unitOfMeasurementId;
  late String createdByUserId;
  late String modifiedByUserId;
  late DateTime dateCreated;
  late DateTime dateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;
}
