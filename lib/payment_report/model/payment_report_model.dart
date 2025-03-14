class PaymentReportModel {
  DateTime paymentDate;
  String customerName;
  double cash;
  double transfer;
  double credit;
  double total;

  PaymentReportModel({
    required this.paymentDate,
    required this.customerName,
    required this.transfer,
    required this.cash,
    required this.credit,
    required this.total,
  });
}
