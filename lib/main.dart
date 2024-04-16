import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      return ScreenUtilInit(builder: (_, child) {
        return GetMaterialApp(
          title: appNameN,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true,
          ),
          initialRoute: RouteName.homepage,
          getPages: routes,
          initialBinding: ApplicationBindings(),
        );
      });
    });
  }
}

extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? xxs,
    T? xs,
    T? sm,
    T? md,
    T? lg,
    T? xl,
    T? xxl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 768
        ? (xxl ?? xl ?? lg ?? md ?? sm ?? xs ?? xxs ?? defaultVal)
        : wd >= 600
            ? (xl ?? lg ?? md ?? sm ?? xs ?? xxs ?? defaultVal)
            : wd >= 480
                ? (lg ?? md ?? sm ?? xs ?? xxs ?? defaultVal)
                : wd >= 420
                    ? (md ?? sm ?? xs ?? xxs ?? defaultVal)
                    : wd >= 360
                        ? (sm ?? xs ?? xxs ?? defaultVal)
                        : wd >= 320
                            ? (xs ?? xxs ?? defaultVal)
                            : wd >= 250
                                ? (xxs ?? defaultVal)
                                : defaultVal;
  }
}
