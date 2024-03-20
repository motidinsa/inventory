import 'package:isar/isar.dart';

part 'group_sales_database_model.g.dart';

@collection
class GroupSalesDatabaseModel {
  Id id = Isar.autoIncrement;
  String groupSalesId;
  double discount;

  GroupSalesDatabaseModel({
    required this.groupSalesId,
    required this.discount,
  });
}
