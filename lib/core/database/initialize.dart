import 'package:my_inventory/core/database/hive_init.dart';

initializeLocalDatabase() async {
  await hiveInit();
}

initializeDatabase() async {
  await initializeLocalDatabase();
}
