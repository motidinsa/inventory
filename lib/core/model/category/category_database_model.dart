import 'package:isar/isar.dart';

part 'category_database_model.g.dart';

@collection
class CategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  String categoryName;
  String categoryId;
  String createdByUserId;
  String? lastModifiedByUserId;
  DateTime dateCreated;
  DateTime? lastDateModified;
  bool? isAppWriteSynced;

  CategoryDatabaseModel({
    required this.categoryName,
    required this.categoryId,
    required this.createdByUserId,
    this.lastModifiedByUserId,
    required this.dateCreated,
    this.lastDateModified,
    this.isAppWriteSynced,
  });
}
