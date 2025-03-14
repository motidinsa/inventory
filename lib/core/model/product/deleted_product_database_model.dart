import 'package:isar/isar.dart';

part 'deleted_product_database_model.g.dart';

@collection
class DeletedProductDatabaseModel {
  Id id = Isar.autoIncrement;
  String productId;
  DateTime deletedDate;
  String deletedByUserId;
  bool? isAppWriteSynced;
  String addedFrom;

  DeletedProductDatabaseModel({
    required this.productId,
    required this.deletedDate,
    required this.deletedByUserId,
    this.isAppWriteSynced,
    required this.addedFrom,
  });
}
