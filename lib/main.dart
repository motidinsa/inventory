import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/app_bindings.dart';
import 'package:my_inventory/core/database/initialize.dart';
import 'package:my_inventory/core/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(builder: (context) {
      return GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidgetBuilder: (_) {
          //ignored progress for the moment
          return Center(
              child: CircularProgressIndicator(
            color: Colors.green.shade700,
            strokeWidth: 2.5,
          ));
        },
        child: GetMaterialApp(
          title: appNameN,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true,
          ),
          initialRoute: RouteName.homepage,
          getPages: routes,
          initialBinding: ApplicationBindings(),
        ),
      );
    });
  }
}
