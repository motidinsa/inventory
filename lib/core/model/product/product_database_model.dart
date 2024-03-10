import 'package:hive/hive.dart';

part 'product_database_model.g.dart';

@HiveType(typeId: 1)
class ProductDatabaseModel extends HiveObject {
  @HiveField(0)
  String productName;

  @HiveField(1)
  String? description;

  @HiveField(2)
  String? categoryId;

  @HiveField(3)
  String? productId;

  @HiveField(4)
  double cost;

  @HiveField(5)
  double price;

  @HiveField(6)
  double quantityOnHand;

  @HiveField(7)
  double reorderQuantity;

  @HiveField(8)
  String unitOfMeasurementId;

  @HiveField(9)
  String createdByUserId;

  @HiveField(10)
  DateTime dateCreated;

  @HiveField(11)
  DateTime dateModified;

  @HiveField(12)
  bool? isAppWriteSynced;

  @HiveField(13)
  String? localImagePath;

  @HiveField(14)
  String? onlineImagePath;

  @HiveField(15)
  String id;

  @HiveField(16)
  String? modifiedByUserId;

  ProductDatabaseModel({
    required this.productName,
    this.description,
    this.categoryId,
    this.productId,
    required this.cost,
    required this.price,
    required this.quantityOnHand,
    required this.reorderQuantity,
    required this.unitOfMeasurementId,
    required this.createdByUserId,
    required this.dateCreated,
    required this.dateModified,
    this.isAppWriteSynced,
    this.localImagePath,
    this.onlineImagePath,
    required this.id,
    this.modifiedByUserId,
  });
}
