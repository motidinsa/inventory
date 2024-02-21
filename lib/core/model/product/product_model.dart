class ProductName {
  String name;
  String? description;
  String categoryId;
  String productId;
  double cost;
  double price;
  int quantityOnHand;
  int reorderQuantity;
  String unitOfMeasurement;
  int createdByUserId;
  DateTime dateCreated;
  DateTime dateModified;
  bool? isAppWriteSynced;
  String? localImagePath;
  String? onlineImagePath;

  ProductName({
    required this.name,
    this.description,
    required this.categoryId,
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
  });
}
