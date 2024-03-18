import 'package:isar/isar.dart';

part 'log_category_database_model.g.dart';

@collection
class LogCategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late String categoryName;
  late String categoryId;
  late String createdByUserId;
  late String modifiedByUserId;
  late DateTime dateCreated;
  late DateTime dateModified;
  bool? isAppWriteSynced;
}
