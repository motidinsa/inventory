import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_detail/ui/customer_detail.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';
import '../../customer_list/ui/customer_list.dart';
import '../../drawer/ui/my_drawer.dart';
import '../../edit_customer/ui/edit_customer.dart';
import '../../homepage/ui/homepage.dart';
import '../controller/app_controller.dart';

List<GetPage> routes = [
  GetPage(
      name: RouteName.homepage,
      page: () => GetBuilder<AppController>(builder: (context) {
            return Scaffold(drawer: const MyDrawer(), body: Homepage());
          })),
  GetPage(
      name: RouteName.customerList,
      page: () => CustomerList(),
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
  GetPage(
      name: RouteName.addCustomer,
      page: () => AddCustomer(),
      binding: BindingsBuilder.put(() => AddCustomerController())),
];
