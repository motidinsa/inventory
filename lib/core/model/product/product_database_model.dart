import 'package:isar/isar.dart';

part 'product_database_model.g.dart';

@collection
class Product {
  Id id = Isar.autoIncrement;

 late String name;
  String? description;
  late String categoryId;
  late String categoryName;
  late String productId;
  late double cost;
  late double price;
  late int quantityOnHand;
  late int reorderQuantity;
  late String unitOfMeasurement;
  late int createdByUserId;
  late DateTime dateCreated;
  late  DateTime dateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;
}
