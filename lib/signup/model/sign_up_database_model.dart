import 'package:isar/isar.dart';

part 'sign_up_database_model.g.dart';

@collection
class SignUpDatabaseModel {
  Id id = Isar.autoIncrement;
  String companyName;
  String firstName;
  String lastName;
  String phoneNumber;
  String? email;
  String? onlineLogoPath;
  String? offlineLogoPath;
  DateTime registrationDate;
  String companyId;
  String adminId;
  bool? isAppWriteSynced;

  SignUpDatabaseModel({
    required this.companyName,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.registrationDate,
    required this.companyId,
    required this.adminId,
    this.isAppWriteSynced,
    this.offlineLogoPath,
    this.onlineLogoPath,
  });
}
