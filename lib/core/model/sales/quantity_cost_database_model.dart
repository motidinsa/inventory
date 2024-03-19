import 'package:isar/isar.dart';

part 'quantity_cost_database_model.g.dart';

@collection
class QuantityCostDatabaseModel {
  Id id = Isar.autoIncrement;
  String salesId;
  String purchaseId;
  double quantity;

  QuantityCostDatabaseModel({
    required this.salesId,
    required this.purchaseId,
    required this.quantity,
  });
}
