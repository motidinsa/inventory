import 'package:hive/hive.dart';

part 'purchase_model.g.dart';

@HiveType(typeId: 2)
class PurchaseModel extends HiveObject {
  @HiveField(0)
  String productId;

  @HiveField(1)
  String productName;

  @HiveField(2)
  DateTime date;

  @HiveField(3)
  DateTime dateAdded;

  @HiveField(4)
  DateTime dateModified;

  @HiveField(5)
  String reference;

  @HiveField(6)
  String? customerId;

  @HiveField(7)
  String? customerName;

  @HiveField(8)
  int quantity;

  @HiveField(9)
  double totalAmount;

  @HiveField(10)
  double price;

  @HiveField(11)
  String id;

  @HiveField(12)
  String? vendorId;

  @HiveField(13)
  String? vendorName;

  PurchaseModel({
    required this.productId,
    required this.productName,
    required this.date,
    required this.dateAdded,
    required this.dateModified,
    required this.reference,
    this.customerId,
    this.customerName,
    required this.quantity,
    required this.totalAmount,
    required this.price,
    required this.id,
    this.vendorId,
    this.vendorName,
  });
}
