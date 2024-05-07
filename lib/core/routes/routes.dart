import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';
import 'package:my_inventory/edit_customer/ui/edit_customer.dart';
import 'package:my_inventory/edit_vendor/ui/edit_vendor.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/product_list/ui/product_list.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/ui/purchase.dart';
import 'package:my_inventory/reorder_stock/ui/reorder_stock.dart';
import 'package:my_inventory/sales/ui/sales.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';
import 'package:my_inventory/signup/ui/signup.dart';
import 'package:my_inventory/vendor_detail/ui/vendor_detail.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_list/ui/vendor_list.dart';

import 'package:my_inventory/sales/controller/sales_controller.dart';

import '../../edit_vendor/controller/edit_vendor_controller.dart';
import '../../vendor_detail/controller/vendor_detail_controller.dart';

List<GetPage> routes = [
  GetPage(
    name: RouteName.signUp,
    page: () => const SignUp(),
      binding: BindingsBuilder.put(() => SignupController())
  ),
  GetPage(
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
      page: () => const CustomerDetail(),
      binding: BindingsBuilder.put(() => CustomerDetailController())),GetPage(
      name: RouteName.vendorDetail,
      page: () => const VendorDetail(),
      binding: BindingsBuilder.put(() => VendorDetailController())),
  GetPage(
      name: RouteName.sales,
      page: () => const Sales(),
      binding: BindingsBuilder.put(() => SalesController())),
  GetPage(
      name: RouteName.vendorList,
      page: () => VendorList(),
      binding: BindingsBuilder.put(() => VendorListController())),
  GetPage(
      name: RouteName.addVendor,
      page: () => AddVendor(),
      binding: BindingsBuilder.put(() => AddVendorController())),GetPage(
      name: RouteName.editVendor,
      page: () => EditVendor(),
      binding: BindingsBuilder.put(() => EditVendorController())),
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
      binding: BindingsBuilder.put(() => ProductListController())),
  // GetPage(
  //   name: RouteName.creditHistory,
  //   page: () => const CreditHistory(),
  // ),
  GetPage(
      name: RouteName.editCustomer,
      page: () => EditCustomer(),
      binding: BindingsBuilder.put(() =>
          EditCustomerController())),
  GetPage(
    name: RouteName.reorderStock,
    page: () => const ReorderStock(),
  ),
];
