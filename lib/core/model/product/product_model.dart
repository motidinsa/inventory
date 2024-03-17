class ProductModel {
  String name;
  int id;
  String? description;
  String? categoryId;
  String? categoryName;
  String? userAssignedProductId;
  String cost;
  String price;
  String quantityOnHand;
  String reorderQuantity;
  String unitOfMeasurementId;
  String unitOfMeasurementName;
  String? modifiedByUserId;
  DateTime dateCreated;
  DateTime? lastDateModified;
  String? localImagePath;

  ProductModel({
    required this.name,
    this.description,
    required this.categoryId,
    required this.categoryName,
    required this.userAssignedProductId,
    required this.cost,
    required this.price,
    required this.quantityOnHand,
    required this.reorderQuantity,
    required this.dateCreated,
    required this.lastDateModified,
    this.localImagePath,
    required this.id,
    this.modifiedByUserId,
    required this.unitOfMeasurementId,
    required this.unitOfMeasurementName,
  });
}
