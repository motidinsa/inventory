import 'package:isar/isar.dart';

part 'log_product_database_model.g.dart';

@collection
class LogProductDatabaseModel {
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
  String companyId;
  String? modifiedByUserId;
  DateTime dateCreated;
  DateTime? dateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;

  LogProductDatabaseModel({
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
    required this.companyId,
    this.modifiedByUserId,
    required this.dateCreated,
    this.dateModified,
    this.isAppWriteSynced,
    this.localImagePath,
    this.onlineImagePath,
  });
}
