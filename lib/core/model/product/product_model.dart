class ProductModel {
  String name;
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
    this.localImagePath,
    required this.unitOfMeasurementId,
    required this.unitOfMeasurementName,
  });
}
