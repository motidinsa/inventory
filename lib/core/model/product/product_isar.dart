import 'package:isar/isar.dart';

part 'product_isar.g.dart';

@collection
class ProductIsar {
  Id id = Isar.autoIncrement;
  String productName;
  String? description;
  String? categoryId;
  String? assignedProductId;
  double cost;
  double price;
  double quantityOnHand;
  double reorderQuantity;
  String unitOfMeasurementId;
  String createdByUserId;
  DateTime dateCreated;
  DateTime dateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;
  String productId;
  String? modifiedByUserId;

}