import 'package:isar/isar.dart';

part 'product_database_model.g.dart';

@collection
class ProductDatabaseModel {
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
  String? lastModifiedByUserId;
  late DateTime dateCreated;
  DateTime? lastDateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;
}
