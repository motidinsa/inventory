import 'package:my_inventory/core/database/appwrite_init.dart';

import 'package:my_inventory/core/database/isar_init.dart';

initializeDatabase() async {
  await initializeLocalDatabase();
  await initializeOnlineDatabase();
}

initializeLocalDatabase() async {
  await isarInit();
}

initializeOnlineDatabase() async {
  await appWriteInit();
}
