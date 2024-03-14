import 'package:isar/isar.dart';

part 'category_database_model.g.dart';

@collection
class CategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  late String categoryName;
  late String categoryId;
  late String createdByUserId;
  late String lastModifiedByUserId;
  late DateTime dateCreated;
  late DateTime lastDateModified;
  bool? isAppWriteSynced;
}
