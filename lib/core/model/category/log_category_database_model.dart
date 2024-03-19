import 'package:isar/isar.dart';

part 'log_category_database_model.g.dart';

@collection
class LogCategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  String categoryName;
  String categoryId;
  String createdByUserId;
  String modifiedByUserId;
  DateTime dateCreated;
  DateTime dateModified;
  bool? isAppWriteSynced;
  String addedFrom;

  LogCategoryDatabaseModel({
    required this.categoryName,
    required this.categoryId,
    required this.createdByUserId,
    required this.modifiedByUserId,
    required this.dateCreated,
    required this.dateModified,
    this.isAppWriteSynced,
    required this.addedFrom,
  });
}
