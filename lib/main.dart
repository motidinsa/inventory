// import 'package:appwrite/appwrite.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/ui/drawer/my_drawer.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';
import 'package:path_provider/path_provider.dart';

late Isar isar;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [
      ProductDatabaseModelSchema,
      CategoryDatabaseModelSchema,
      UnitOfMeasurementDatabaseModelSchema,
      LogProductDatabaseModelSchema,
      LogCategoryDatabaseModelSchema,
      LogUnitOfMeasurementDatabaseModelSchema
    ],
    directory: dir.path,
  );
  // await Isar.initialize();
  // await initializeDatabase();
  Get.put(AppController());
  // Stream<void> userChanged = isar.users.watchLazy();
  // userChanged.listen(
  //   (event) {
  //     // Executed when data event is received
  //     print('Contact added');
  //   },
  //   onError: (err) {
  //     // Executed when error is received
  //     print('Error: ${err}');
  //   },
  //   cancelOnError:
  //       false, // The subscription is automatically canceled when the first error event is delivered – default is true
  //   onDone: () {
  //     // Executed when done event is recieved
  //     print('Done!');
  //   },
  // );
  runApp(const MyApp());
  // final dir = await getApplicationDocumentsDirectory();
  // var isar = await Isar.open(
  //   [CustomerDatabaseModelSchema],
  //   directory: dir.path,
  // );
  // AppController a = Get.put(AppController());
  // a.isar = isar;
  // Client client = Client();
  //
  // client
  //     .setEndpoint('https://cloud.appwrite.io/v1') // Your Appwrite Endpoint
  //     .setProject('65c1e7733a536752855d')
  //     ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(builder: (context) {
      return GetMaterialApp(
        title: appNameN(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: Scaffold(
          drawer: const Drawer(
            child: MyDrawer(),
          ),
          body: Homepage(),
        ),
      );
    });
  }
}
