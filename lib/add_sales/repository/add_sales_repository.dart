import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:my_inventory/core/model/sales/group_sales_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_payment_database_model.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';

import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_model.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../../core/model/customer/customer_database_model.dart';

class AddSalesRepository {
  static final Isar _isar = Get.find();

  static List<ProductDatabaseModel> getAllProduct() {
    return _isar.productDatabaseModels.where().findAllSync();
  }

  static int getProductCount() {
    return _isar.productDatabaseModels.countSync();
  }

  static List<ProductDatabaseModel> searchProduct({required String data}) {
    return _isar.productDatabaseModels
        .filter()
        .productNameContains(data, caseSensitive: false)
        .findAllSync();
  }

  static List<CustomerDatabaseModel> getAllCustomers() {
    return _isar.customerDatabaseModels.where().findAllSync();
  }

  static int getCustomerCount() {
    return _isar.customerDatabaseModels.countSync();
  }

  static List<CustomerDatabaseModel> searchCustomer({required String data}) {
    return _isar.customerDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync();
  }

  static saveSalesProductToDB() async {
    final AddSalesController salesController = AddSalesController.to;
    List<SalesModel> salesModels = salesController.salesModels;
    List<SalesDatabaseModel> salesDatabaseModels = [];
    String groupSalesId =
        generateDatabaseId(time: DateTime.now(), identifier: 'group');
    String salesPaymentId =
        generateDatabaseId(time: DateTime.now(), identifier: 'p_id');
    for (int i = 0; i < salesModels.length; i++) {
      SalesModel salesModel = salesModels[i];
      DateTime now = DateTime.now();
      String salesId = generateDatabaseId(time: now, identifier: i);
      List<PurchaseAvailableDatabaseModel> purchases =
          _getAvailablePurchases(productId: salesModel.productId);
      ProductDatabaseModel product = _isar.productDatabaseModels
          .filter()
          .productIdEqualTo(salesModel.productId)
          .findFirstSync()!;
      LogProductDatabaseModel logProduct = _isar.logProductDatabaseModels
          .filter()
          .productIdEqualTo(salesModel.productId)
          .findFirstSync()!;
      double remaining = double.parse(salesModel.quantity);
      await _isar.writeTxn(() async {
        while (remaining != 0) {
          if (remaining <= purchases.first.quantity) {
            await _isar.quantityCostDatabaseModels.put(
              QuantityCostDatabaseModel(
                salesId: salesId,
                purchaseId: purchases.first.purchaseId,
                quantity: remaining,
              ),
            );
            if (purchases.first.quantity > remaining) {
              purchases.first.quantity -= remaining;
              await _isar.purchaseAvailableDatabaseModels.put(purchases.first);
            } else {
              await _isar.purchaseAvailableDatabaseModels
                  .delete(purchases.first.id);
            }
            remaining = 0;
          } else if (double.parse(salesModel.quantity) >
              purchases.first.quantity) {
            remaining -= purchases.first.quantity;

            await _isar.quantityCostDatabaseModels
                .put(QuantityCostDatabaseModel(
              salesId: salesId,
              purchaseId: purchases.first.purchaseId,
              quantity: purchases.first.quantity,
            ));
            await _isar.purchaseAvailableDatabaseModels
                .delete(purchases.first.id);
            purchases.removeAt(0);
          }
        }
        double quantityOnHand =
            product.quantityOnHand - double.parse(salesModel.quantity);
        product.quantityOnHand = quantityOnHand;
        product.lastDateModified = now;
        product.lastModifiedByUserId = AppController.to.userId;
        await _isar.productDatabaseModels.put(product);
        salesDatabaseModels.add(
          SalesDatabaseModel(
              productId: salesModel.productId,
              salesId: salesId,
              groupSalesId: groupSalesId,
              salesDate: salesController.selectedSalesDate,
              dateCreated: now,
              quantity: double.parse(salesModel.quantity),
              price: double.parse(salesModel.price),
              // customerId: salesController.customerId,
              salesPaymentId: salesPaymentId),
        );
        // await _isar.logProductDatabaseModels.put(
        //   LogProductDatabaseModel(
        //     productId: logProduct.productId,
        //     productName: logProduct.productName,
        //     cost: logProduct.cost,
        //     price: logProduct.price,
        //     quantityOnHand: quantityOnHand,
        //     reorderQuantity: logProduct.reorderQuantity,
        //     unitOfMeasurementId: logProduct.unitOfMeasurementId,
        //     createdByUserId: logProduct.createdByUserId,
        //     modifiedByUserId: AppController.to.userId,
        //     dateCreated: logProduct.dateCreated,
        //     dateModified: now,
        //     addedFrom: salesDC,
        //   ),
        // );

        //
        _isar.salesDatabaseModels.putAll(salesDatabaseModels);
        _isar.groupSalesDatabaseModels.put(
          GroupSalesDatabaseModel(
            groupSalesId: groupSalesId,
            discount: isNumeric(salesController.discount)
                ? double.parse(salesController.discount)
                : 0,
          ),
        );
        if ((salesController.transfer.isNotEmpty &&
                salesController.transfer != '0') ||
            (salesController.cash.isNotEmpty && salesController.cash != '0')) {
          _isar.salesPaymentDatabaseModels.put(
            SalesPaymentDatabaseModel(
              cash: double.parse(salesController.cash),
              transfer: double.parse(salesController.transfer),
              credit: double.parse(salesController.credit),
              customerId: salesController.customerDatabaseModel!.customerId,
              groupSalesId: groupSalesId,
              salesPaymentId: salesPaymentId,
              total: double.parse(salesController.total),
            ),
          );
        }
      });
    }
  }

  static List<PurchaseAvailableDatabaseModel> _getAvailablePurchases(
      {required String productId}) {
    return Get.find<Isar>()
        .purchaseAvailableDatabaseModels
        .filter()
        .group(
            (q) => q.productIdEqualTo(productId).and().quantityGreaterThan(0))
        .findAllSync();
  }
}
