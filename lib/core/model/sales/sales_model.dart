class SalesModel {
  String productId;
  String productName;
  String? customerId;
  String quantity;
  double totalAmount;
  String price;
  String? vendorId;

  SalesModel({
    required this.productId,
    required this.productName,
    this.customerId,
    required this.quantity,
    required this.price,
    this.vendorId,
    required this.totalAmount,
  });
}
