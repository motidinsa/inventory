import 'package:isar/isar.dart';

part 'deleted_product_database_model.g.dart';

@collection
class DeletedProductDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late String productId;
  late DateTime deletedDate;
  late String deletedByUserId;
  bool? isAppWriteSynced;
}
