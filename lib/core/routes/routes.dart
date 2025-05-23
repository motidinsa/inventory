import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/add_customer/controller/add_customer_controller.dart';
import 'package:inventory/add_customer/ui/add_customer.dart';
import 'package:inventory/add_product/controller/add_product_controller.dart';
import 'package:inventory/add_product/ui/add_product.dart';
import 'package:inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:inventory/add_vendor/ui/add_vendor.dart';
import 'package:inventory/core/routes/route_names.dart';
import 'package:inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:inventory/customer_detail/ui/credit_pay_history.dart';
import 'package:inventory/customer_detail/ui/customer_detail.dart';
import 'package:inventory/customer_list/controller/customer_list_controller.dart';
import 'package:inventory/customer_list/ui/customer_list.dart';
import 'package:inventory/drawer/ui/my_drawer.dart';
import 'package:inventory/edit_customer/controller/edit_customer_controller.dart';
import 'package:inventory/edit_customer/ui/edit_customer.dart';
import 'package:inventory/edit_product/ui/edit_product.dart';
import 'package:inventory/edit_vendor/ui/edit_vendor.dart';
import 'package:inventory/homepage/ui/homepage.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/payment_report/ui/payment_report.dart';
import 'package:inventory/product_detail/ui/product_detail.dart';
import 'package:inventory/product_list/controller/product_list_controller.dart';
import 'package:inventory/product_list/ui/product_list.dart';
import 'package:inventory/purchase_report/ui/purchase_report.dart';
import 'package:inventory/reorder_stock/ui/reorder_stock.dart';
import 'package:inventory/add_sales/ui/add_sales.dart';
import 'package:inventory/sales_report/ui/sales_report.dart';
import 'package:inventory/signup/controller/signup_controller.dart';
import 'package:inventory/signup/ui/signup.dart';
import 'package:inventory/vendor_detail/ui/vendor_detail.dart';
import 'package:inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:inventory/vendor_list/ui/vendor_list.dart';

import 'package:inventory/add_sales/controller/add_sales_controller.dart';

import 'package:inventory/edit_vendor/controller/edit_vendor_controller.dart';
import 'package:inventory/vendor_detail/controller/vendor_detail_controller.dart';

import '../../add_purchase/controller/add_purchase_controller.dart';
import '../../add_purchase/ui/add_purchase.dart';
import '../../credit_history/credit_history.dart';
import '../../edit_product/controller/edit_product_controller.dart';
import '../../inventory_report/controller/inventory_report_controller.dart';
import '../../inventory_report/ui/inventory_report.dart';
import '../../payment_report/controller/payment_report_controller.dart';
import '../../product_detail/controller/product_detail_controller.dart';
import '../../purchase_report/controller/purchase_report_controller.dart';
import '../../sales_report/controller/sales_report_controller.dart';

List<GetPage> routes = [
  GetPage(
      name: RouteName.signUp,
      page: () => const SignUp(),
      binding: BindingsBuilder.put(() => SignupController())),
  GetPage(
    name: RouteName.homepage,
    page: () => GetBuilder<AppController>(builder: (context) {
      return Scaffold(drawer: MyDrawer(), body: Homepage());
    }),
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
      name: RouteName.customerDetail,preventDuplicates: false,
      page: () => const CustomerDetail(),
      binding: BindingsBuilder.put(() => CustomerDetailController())),
  GetPage(
      name: RouteName.vendorDetail,
      page: () => const VendorDetail(),
      binding: BindingsBuilder.put(() => VendorDetailController())),
  GetPage(
      name: RouteName.addSales,
      page: () => const Sales(),
      binding: BindingsBuilder.put(() => AddSalesController())),
  GetPage(
      name: RouteName.vendorList,
      page: () => const VendorList(),
      binding: BindingsBuilder.put(() => VendorListController())),
  GetPage(
      name: RouteName.addVendor,
      page: () => AddVendor(),
      binding: BindingsBuilder.put(() => AddVendorController())),
  GetPage(
      name: RouteName.editVendor,
      page: () => EditVendor(),
      binding: BindingsBuilder.put(() => EditVendorController())),
  GetPage(
      name: RouteName.addPurchase,
      page: () => AddPurchase(),
      binding: BindingsBuilder.put(() => AddPurchaseController())),
  GetPage(
      name: RouteName.addProduct,
      page: () => AddProduct(),
      binding: BindingsBuilder.put(() => AddProductController())),
  GetPage(
      name: RouteName.productList,
      page: () => ProductList(),
      binding: BindingsBuilder.put(() => ProductListController())),
  GetPage(
      name: RouteName.productDetail,
      page: () => ProductDetail(),
      binding: BindingsBuilder.put(() => ProductDetailController())),
  GetPage(
      name: RouteName.editProduct,
      page: () => EditProduct(),
      binding: BindingsBuilder.put(() => EditProductController())),
  GetPage(
    name: RouteName.creditHistory,
    page: () => const CreditHistory(),
  ),GetPage(
    name: RouteName.creditPayHistory,
    page: () => const CreditPayHistory(),
  ),
  GetPage(
      name: RouteName.editCustomer,
      page: () => EditCustomer(),
      binding: BindingsBuilder.put(() => EditCustomerController())),
  GetPage(
    name: RouteName.reorderStock,
    page: () => const ReorderStock(),
  ),
  GetPage(
      name: RouteName.salesReport,
      page: () => const SalesReport(),
      binding: BindingsBuilder.put(() => SalesReportController())),
  GetPage(
      name: RouteName.purchaseReport,
      page: () => const PurchaseReport(),
      binding: BindingsBuilder.put(() => PurchaseReportController())),
  GetPage(
      name: RouteName.inventoryReport,
      page: () => const InventoryReport(),
      binding: BindingsBuilder.put(() => InventoryReportController())),
  GetPage(
      name: RouteName.paymentReport,
      page: () => const PaymentReport(),
      binding: BindingsBuilder.put(() => PaymentReportController())),
];
