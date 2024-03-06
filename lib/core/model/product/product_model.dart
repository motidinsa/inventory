class ProductModel {
  String name;

  String id;

  String? description;

  String categoryId;

  String categoryName;

  String productId;

  String cost;

  String price;

  String quantityOnHand;

  String reorderQuantity;

  String unitOfMeasurement;

  String createdByUserId;

  DateTime dateCreated;

  DateTime dateModified;

  String? localImagePath;

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
    this.localImagePath,
    required this.id,
  });
}
