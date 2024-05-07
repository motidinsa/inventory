import 'package:isar/isar.dart';

part 'log_category_database_model.g.dart';

@collection
class LogCategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  String categoryName;
  String categoryId;
  String objectId;
  String createdByUserId;
  String companyId;
  String? modifiedByUserId;
  DateTime dateCreated;
  DateTime? dateModified;
  bool? isAppWriteSynced;
  String addedFrom;

  LogCategoryDatabaseModel({
    required this.categoryName,
    required this.categoryId,
    required this.objectId,
    required this.createdByUserId,
    required this.companyId,
    this.modifiedByUserId,
    required this.dateCreated,
    this.dateModified,
    this.isAppWriteSynced,
    required this.addedFrom,
  });
}
