import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_detail/ui/customer_detail.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/ui/customer_list.dart';
import 'package:my_inventory/drawer/ui/my_drawer.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import '../../sales/controller/sales_controller.dart';
import '../../sales/ui/sales.dart';

List<GetPage> routes = [
  GetPage(
      name: RouteName.homepage,
      page: () => GetBuilder<AppController>(builder: (context) {
            return const Scaffold(drawer: MyDrawer(), body: Homepage());
          })),
  GetPage(
      name: RouteName.customerList,
      page: () => const CustomerList(),
      binding: BindingsBuilder.put(() => CustomerListController())),
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
  GetPage(
      name: RouteName.customerDetail,
      page: () => CustomerDetail(),
      // binding: BindingsBuilder.put(() => EditCustomerController(
      //       customerDatabaseModel: customerDatabaseModel,
      //     )
      // )
  ),
  GetPage(
      name: RouteName.sales,
      page: () => Sales(),
      binding: BindingsBuilder.put(() => SalesController())),
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
];
