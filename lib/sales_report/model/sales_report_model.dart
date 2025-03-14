class SalesReportModel {
  DateTime salesDate;
  String productName;
  double quantity;
  double totalCost;
  double totalPrice;

  SalesReportModel({
    required this.salesDate,
    required this.productName,
    required this.quantity,
    required this.totalCost,
    required this.totalPrice,
  });
}
