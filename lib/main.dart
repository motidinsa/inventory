import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/deleted_product_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/sales/group_sales_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';
import 'package:path_provider/path_provider.dart';

import 'package:my_inventory/drawer/ui/my_drawer.dart';

late Isar isar;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [
      ProductDatabaseModelSchema,
      QuantityCostDatabaseModelSchema,
      LogProductDatabaseModelSchema,
      PurchaseAvailableDatabaseModelSchema,
      PurchaseAllDatabaseModelSchema,
      SalesDatabaseModelSchema,
      GroupSalesDatabaseModelSchema,
      DeletedProductDatabaseModelSchema,
      CategoryDatabaseModelSchema,
      LogCategoryDatabaseModelSchema,
      UnitOfMeasurementDatabaseModelSchema,
      LogUnitOfMeasurementDatabaseModelSchema,
      CustomerDatabaseModelSchema,
      VendorDatabaseModelSchema
    ],
    directory: dir.path,
  );
  // await Isar.initialize();
  // await initializeDatabase();
  Get.put(AppController());
  runApp(const MyApp());

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
    return ScreenUtilInit(builder: (_, child) {
      return DevicePreview(builder: (context) {
        print('Device Size:${Size(1.sp, 1.sh)}');
        print('Device pixel density:${ScreenUtil().pixelRatio}');
        print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
        print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
        print(
            'The ratio of actual width to UI design:${ScreenUtil().scaleWidth}');
        print(
            'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
        print('System font scaling:${ScreenUtil().textScaleFactor}');
        print('0.5 times the screen width:${0.5.sw}dp');
        print('0.5 times the screen height:${0.5.sh}dp');
        print('Screen orientation:${ScreenUtil().orientation}');

        return GetMaterialApp(
          title: appNameN(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true,
          ),
          home: Scaffold(
            drawer: const MyDrawer(),
            body: Homepage(),
          ),
        );
      });
    });
  }
}
