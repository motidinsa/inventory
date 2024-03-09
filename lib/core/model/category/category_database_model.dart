import 'package:hive/hive.dart';

part 'category_database_model.g.dart';

@HiveType(typeId: 4)
class CategoryDatabaseModel extends HiveObject {
  @HiveField(0)
  String categoryName;

  @HiveField(1)
  String categoryId;

  @HiveField(2)
  String createdByUserId;

  @HiveField(3)
  String? modifiedByUserId;

  @HiveField(4)
  DateTime dateCreated;

  @HiveField(5)
  DateTime dateModified;

  @HiveField(6)
  bool? isAppWriteSynced;

  CategoryDatabaseModel({
    required this.categoryId,
    required this.createdByUserId,
    required this.dateCreated,
    required this.dateModified,
    required this.categoryName,
    this.isAppWriteSynced,
    this.modifiedByUserId,
  });
}
