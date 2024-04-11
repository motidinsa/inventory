import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:path_provider/path_provider.dart';

import '../customer_list/controller/customer_list_controller.dart';
import 'model/category/category_database_model.dart';
import 'model/category/log_category_database_model.dart';
import 'model/customer/customer_database_model.dart';
import 'model/product/deleted_product_database_model.dart';
import 'model/product/log_product_database_model.dart';
import 'model/product/product_database_model.dart';
import 'model/purchase/purchase_all_database_model.dart';
import 'model/purchase/purchase_available_database_model.dart';
import 'model/sales/group_sales_database_model.dart';
import 'model/sales/quantity_cost_database_model.dart';
import 'model/sales/sales_database_model.dart';
import 'model/sales/sales_payment_database_model.dart';
import 'model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'model/vendor/vendor_database_model.dart';

class ApplicationBindings implements Bindings {
  ApplicationBindings();

  @override
  void dependencies()  {
    Get.lazyPut(() => AppController());

  }
}
