import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/app_bindings.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/database/initialize.dart';
import 'package:my_inventory/core/env/env.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();
  late String initialRoute;
  if (await Get.put(const FlutterSecureStorage()).read(key: Env.loginKey) != null) {
    initialRoute = RouteName.homepage;
  } else {
    initialRoute = RouteName.signUp;
  }
  runApp(
    MyApp(
      initialRoute: initialRoute,
    ),
  );
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (_, child) {
      return GlobalLoaderOverlay(
        // useDefaultLoading: false,
        overlayWidgetBuilder: (_) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.green.shade700,
              strokeWidth: 3,
            ),
          );
        },
        child: GetMaterialApp(
          title: appNameN,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true,
          ),
          initialRoute: initialRoute,
          getPages: routes,
          initialBinding: ApplicationBindings(),
        ),
      );
    });
  }


  const MyApp({super.key, required this.initialRoute});
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
