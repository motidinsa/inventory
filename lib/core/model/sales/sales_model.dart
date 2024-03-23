class SalesModel {
  String productId;
  String productName;
  String? customerId;
  String quantity;
  double totalAmount;
  String price;

  SalesModel({
    required this.productId,
    required this.productName,
    this.customerId,
    required this.quantity,
    required this.price,
    required this.totalAmount,
  });
}
