
import 'package:isar/isar.dart';

part 'quantity_cost_database_model.g.dart';

@collection
class QuantityCostDatabaseModel {
  Id id = Isar.autoIncrement;
  late String salesId;
  late String purchaseId;
  late double quantity;
}