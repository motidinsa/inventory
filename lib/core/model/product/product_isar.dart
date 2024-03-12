import 'package:isar/isar.dart';

part 'product_isar.g.dart';

@collection
class ProductIsar {
  Id id = Isar.autoIncrement;
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
  late DateTime dateCreated;
  late DateTime dateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;
  late String productId;
  String? modifiedByUserId;
  late String test;
}
