import 'package:isar/isar.dart';

part 'log_category_database_model.g.dart';

@collection
class LogCategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  late String categoryName;
  late String categoryId;
  late String createdByUserId;
  late String lastModifiedByUserId;
  late DateTime dateCreated;
  late DateTime lastDateModified;
  bool? isAppWriteSynced;
}
