import 'package:isar/isar.dart';

part 'product_database_model.g.dart';

@collection
class ProductDatabaseModel {
  Id id = Isar.autoIncrement;
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
  late String lastModifiedByUserId;
  late DateTime dateCreated;
  late DateTime lastDateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;
}
