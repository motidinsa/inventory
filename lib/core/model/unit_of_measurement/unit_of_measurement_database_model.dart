import 'package:hive/hive.dart';

part 'unit_of_measurement_database_model.g.dart';

@HiveType(typeId: 5)
class UnitOfMeasurementDatabaseModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String uomId;

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

  UnitOfMeasurementDatabaseModel({
    required this.name,
    required this.createdByUserId,
    required this.dateCreated,
    required this.dateModified,
    required this.uomId,
    this.isAppWriteSynced,
    this.modifiedByUserId,
  });
}
