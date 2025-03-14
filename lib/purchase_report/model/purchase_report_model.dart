class PurchaseReportModel {
  DateTime purchaseDate;
  String productName;
  double quantity;
  double unitCost;
  double totalCost;

  PurchaseReportModel({
    required this.purchaseDate,
    required this.productName,
    required this.quantity,
    required this.unitCost,
    required this.totalCost,
  });
}
