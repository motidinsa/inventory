class SalesModel {
  String productId;
  String productName;
  String quantity;
  double totalAmount;
  String price;
  double productQuantity;

  SalesModel({
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.price,
    required this.totalAmount,
    required this.productQuantity,
  });
}
