import 'package:isar/isar.dart';

part 'log_unit_of_measurement_database_model.g.dart';

@collection
class LogUnitOfMeasurementDatabaseModel {
  Id id = Isar.autoIncrement;
  late String name;
  late String uomId;
  late String createdByUserId;
  late String modifiedByUserId;
  late DateTime dateCreated;
  late DateTime dateModified;
  bool? isAppWriteSynced;
  late String addedFrom;

  LogUnitOfMeasurementDatabaseModel({
    required this.name,
    required this.uomId,
    required this.createdByUserId,
    required this.modifiedByUserId,
    required this.dateCreated,
    required this.dateModified,
    this.isAppWriteSynced,
    required this.addedFrom,
  });
}
