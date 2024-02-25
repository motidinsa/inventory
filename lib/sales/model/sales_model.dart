class SalesModel {
  String productId;
  String productName;
  DateTime date;
  DateTime dateAdded;
  DateTime dateModified;
  String reference;
  String customerId;
  String customerName;
  int quantity;
  double totalAmount;
  double price;

  SalesModel({
    required this.productId,
    required this.productName,
    required this.date,
    required this.dateAdded,
    required this.dateModified,
    required this.reference,
    required this.customerId,
    required this.customerName,
    required this.quantity,
    required this.totalAmount,
    required this.price,
  });
}
