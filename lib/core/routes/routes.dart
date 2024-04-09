import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import '../../drawer/ui/my_drawer.dart';
import '../../homepage/ui/homepage.dart';
import '../controller/app_controller.dart';

final List<GetPage> routes = [
  GetPage(
    name: RouteName.homepage,
    page: () => GetBuilder<AppController>(builder: (context) {
      return Scaffold(
        drawer: const MyDrawer(),
        body: Homepage(),
      );
    }),
  ),
];
