import 'package:isar/isar.dart';

part 'unit_of_measurement_database_model.g.dart';

@collection
class UnitOfMeasurementDatabaseModel {
  Id id = Isar.autoIncrement;
  late String userId;
  late String name;
  late String uomId;
  late String createdByUserId;
  String? lastModifiedByUserId;
  late DateTime dateCreated;
  DateTime? lastDateModified;
  bool? isAppWriteSynced;
}
