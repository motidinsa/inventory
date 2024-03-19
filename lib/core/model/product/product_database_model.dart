import 'package:isar/isar.dart';

part 'product_database_model.g.dart';

@collection
class ProductDatabaseModel {
  Id id = Isar.autoIncrement;
  String productId;
  String productName;
  String? description;
  String? categoryId;
  String? userAssignedProductId;
  double cost;
  double price;
  double quantityOnHand;
  double reorderQuantity;
  String unitOfMeasurementId;
  String createdByUserId;
  String? lastModifiedByUserId;
  DateTime dateCreated;
  DateTime? lastDateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;

  ProductDatabaseModel({
    required this.productId,
    required this.productName,
    this.description,
    this.categoryId,
    this.userAssignedProductId,
    required this.cost,
    required this.price,
    required this.quantityOnHand,
    required this.reorderQuantity,
    required this.unitOfMeasurementId,
    required this.createdByUserId,
    this.lastModifiedByUserId,
    required this.dateCreated,
    this.lastDateModified,
    this.isAppWriteSynced,
    this.localImagePath,
    this.onlineImagePath,
  });
}
