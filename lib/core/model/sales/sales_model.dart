class SalesModel {
  String productId;
  String productName;
  DateTime salesDate;
  String? customerId;
  String quantity;
  double totalAmount;
  String price;
  String? vendorId;

  SalesModel({
    required this.productId,
    required this.productName,
    required this.salesDate,
    this.customerId,
    required this.quantity,
    required this.price,
    this.vendorId,
    required this.totalAmount,
  });
}
