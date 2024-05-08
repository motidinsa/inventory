import 'package:isar/isar.dart';

part 'unit_of_measurement_database_model.g.dart';

@collection
class UnitOfMeasurementDatabaseModel {
  Id id = Isar.autoIncrement;
  String name;
  String uomId;
  String createdByUserId;
  String companyId;
  String? lastModifiedByUserId;
  DateTime dateCreated;
  DateTime? lastDateModified;
  bool? isAppWriteSynced;

  UnitOfMeasurementDatabaseModel({
    required this.name,
    required this.uomId,
    required this.createdByUserId,
    required this.companyId,
    this.lastModifiedByUserId,
    required this.dateCreated,
    this.lastDateModified,
    this.isAppWriteSynced,
  });
}
