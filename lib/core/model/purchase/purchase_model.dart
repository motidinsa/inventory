class PurchaseModel {
  String productId;
  String productName;
  int? customerId;
  String quantity;
  double totalAmount;
  String cost;
  String? vendorId;

  PurchaseModel({
    required this.productId,
    required this.productName,
    this.customerId,
    required this.quantity,
    required this.totalAmount,
    required this.cost,
    this.vendorId,
  });
}
