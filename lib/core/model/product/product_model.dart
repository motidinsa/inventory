import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 1)
class ProductModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String? description;

  @HiveField(2)
  String categoryId;

  @HiveField(3)
  String categoryName;

  @HiveField(4)
  String productId;

  @HiveField(5)
  double cost;

  @HiveField(6)
  double price;

  @HiveField(7)
  String quantityOnHand;

  @HiveField(8)
  int reorderQuantity;

  @HiveField(9)
  String unitOfMeasurement;

  @HiveField(10)
  int createdByUserId;

  @HiveField(11)
  DateTime dateCreated;

  @HiveField(12)
  DateTime dateModified;

  @HiveField(13)
  bool? isAppWriteSynced;

  @HiveField(14)
  String? localImagePath;

  @HiveField(15)
  String? onlineImagePath;

  @HiveField(16)
  String id;

  ProductModel({
    required this.name,
    this.description,
    required this.categoryId,
    required this.categoryName,
    required this.productId,
    required this.cost,
    required this.price,
    required this.quantityOnHand,
    required this.reorderQuantity,
    required this.unitOfMeasurement,
    required this.createdByUserId,
    required this.dateCreated,
    required this.dateModified,
    this.isAppWriteSynced,
    this.localImagePath,
    this.onlineImagePath,
    required this.id,
  });
}
