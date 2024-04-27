import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/ui/add_product.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/add_vendor/ui/add_vendor.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_detail/ui/customer_detail.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/ui/customer_list.dart';
import 'package:my_inventory/drawer/ui/my_drawer.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/product_list/ui/product_list.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/ui/purchase.dart';
import 'package:my_inventory/sales/ui/sales.dart';
import 'package:my_inventory/signup/ui/signup.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_list/ui/vendor_list.dart';

import '../../credit_history/credit_history.dart';
import '../../sales/controller/sales_controller.dart';

List<GetPage> routes = [
  GetPage(
    name: RouteName.signUp,
    page: () => SignUp(),
    // page: () => SignUp(),
  ),GetPage(
    name: RouteName.homepage,
    page: () => GetBuilder<AppController>(builder: (context) {
      return const Scaffold(drawer: MyDrawer(), body: Homepage());
    }),
    // page: () => SignUp(),
  ),
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
    binding: BindingsBuilder.put(() => CustomerDetailController()
    )
  ),
  GetPage(
      name: RouteName.sales,
      page: () => Sales(),
      binding: BindingsBuilder.put(() => SalesController())),
  GetPage(
      name: RouteName.vendorList,
      page: () => VendorList(),
      binding: BindingsBuilder.put(() => VendorListController())),
  GetPage(
      name: RouteName.addVendor,
      page: () => AddVendor(),
      binding: BindingsBuilder.put(() => AddVendorController())),
  GetPage(
      name: RouteName.purchase,
      page: () => Purchase(),
      binding: BindingsBuilder.put(() => PurchaseController())),
  GetPage(
      name: RouteName.addProduct,
      page: () => AddProduct(),
      binding: BindingsBuilder.put(() => AddProductController())),
  GetPage(
      name: RouteName.productList,
      page: () => ProductList(),
      binding: BindingsBuilder.put(() => ProductListController())),GetPage(
      name: RouteName.creditHistory,
      page: () => CreditHistory(),
  ),
];
