import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;

  String? name;

  int? age;

  User({this.name, this.age});
}
