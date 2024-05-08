import 'package:isar/isar.dart';

part 'log_unit_of_measurement_database_model.g.dart';

@collection
class LogUnitOfMeasurementDatabaseModel {
  Id id = Isar.autoIncrement;
  String name;
  String uomId;
  String createdByUserId;
  String companyId;
  String objectId;
  String? modifiedByUserId;
  DateTime dateCreated;
  DateTime dateModified;
  bool? isAppWriteSynced;
  String addedFrom;

  LogUnitOfMeasurementDatabaseModel({
    required this.name,
    required this.uomId,
    required this.createdByUserId,
    required this.companyId,
    required this.objectId,
     this.modifiedByUserId,
    required this.dateCreated,
    required this.dateModified,
    this.isAppWriteSynced,
    required this.addedFrom
  });
}
