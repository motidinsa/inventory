class ProductName {
  final String name;
  final String? description;
  final String categoryId;
  final String productId;
  final double cost;
  final double price;
  final int quantityOnHand;
  final int reorderQuantity;
  final String unitOfMeasurement;
  final int createdByUserId;
  final DateTime dateCreated;
  final DateTime dateModified;
  final bool? isAppWriteSynced;
  final String? localImagePath;
  final String? onlineImagePath;

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
