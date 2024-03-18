import 'package:isar/isar.dart';

part 'category_database_model.g.dart';

@collection
class CategoryDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late String categoryName;
  late String categoryId;
  late String createdByUserId;
  String? lastModifiedByUserId;
  late DateTime dateCreated;
  DateTime? lastDateModified;
  bool? isAppWriteSynced;
}
