import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../model/category/category_database_model.dart';
import '../model/category/log_category_database_model.dart';
import '../model/customer/customer_database_model.dart';
import '../model/product/deleted_product_database_model.dart';
import '../model/product/log_product_database_model.dart';
import '../model/product/product_database_model.dart';
import '../model/purchase/purchase_all_database_model.dart';
import '../model/purchase/purchase_available_database_model.dart';
import '../model/sales/group_sales_database_model.dart';
import '../model/sales/quantity_cost_database_model.dart';
import '../model/sales/sales_database_model.dart';
import '../model/sales/sales_payment_database_model.dart';
import '../model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import '../model/unit_of_measurement/unit_of_measurement_database_model.dart';
import '../model/vendor/vendor_database_model.dart';

isarInit() async {
  await Get.putAsync<Isar>(() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [
        ProductDatabaseModelSchema,
        QuantityCostDatabaseModelSchema,
        LogProductDatabaseModelSchema,
        PurchaseAvailableDatabaseModelSchema,
        PurchaseAllDatabaseModelSchema,
        SalesDatabaseModelSchema,
        SalesPaymentDatabaseModelSchema,
        GroupSalesDatabaseModelSchema,
        DeletedProductDatabaseModelSchema,
        CategoryDatabaseModelSchema,
        LogCategoryDatabaseModelSchema,
        UnitOfMeasurementDatabaseModelSchema,
        LogUnitOfMeasurementDatabaseModelSchema,
        CustomerDatabaseModelSchema,
        VendorDatabaseModelSchema
      ],
      directory: dir.path,
    );
  });
}