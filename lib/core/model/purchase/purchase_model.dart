class PurchaseModel {
  int productId;
  DateTime purchaseDate;
  int? customerId;
  String quantity;
  double totalAmount;
  String cost;
  String? vendorId;

  PurchaseModel({
    required this.productId,
    required this.purchaseDate,
    this.customerId,
    required this.quantity,
    required this.totalAmount,
    required this.cost,
    this.vendorId,
  });
}
