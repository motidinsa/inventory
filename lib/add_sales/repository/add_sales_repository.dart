import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:inventory/core/model/sales/group_sales_database_model.dart';
import 'package:inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:inventory/core/model/sales/sales_payment_database_model.dart';
import 'package:inventory/add_sales/controller/add_sales_controller.dart';

import 'package:inventory/core/constants/database_constants.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/model/product/log_product_database_model.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:inventory/core/model/sales/sales_database_model.dart';
import 'package:inventory/core/model/sales/sales_model.dart';

import 'package:inventory/core/functions/helper_functions.dart';

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
    final AddSalesController allSalesController = AddSalesController.to;
    final AppController appController = AppController.to;
    // List<SalesModel> salesModels = salesController.salesModels;
    List<SalesDatabaseModel> salesDatabaseModels = [];
    String salesPaymentId =
        generateDatabaseId(time: DateTime.now(), identifier: 'p_id');
    DateTime now = DateTime.now();
    await _isar.writeTxn(() async {
      for (int i = 0; i < allSalesController.salesModels.length; i++) {
        SalesModel salesModel = allSalesController.salesModels[i];

        String salesId = generateDatabaseId(time: now, identifier: i);
        List<PurchaseAvailableDatabaseModel> purchases =
            await getAvailablePurchases(productId: salesModel.productId);
        ProductDatabaseModel? product = await _isar.productDatabaseModels
            .filter()
            .productIdEqualTo(salesModel.productId)
            .findFirst();
        // LogProductDatabaseModel logProduct = _isar.logProductDatabaseModels
        //     .filter()
        //     .productIdEqualTo(salesModel.productId)
        //     .findFirstSync()!;
        double remaining = double.parse(salesModel.quantity);
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
            product!.quantityOnHand - double.parse(salesModel.quantity);
        product.quantityOnHand = quantityOnHand;
        product.lastDateModified = now;
        product.lastModifiedByUserId = AppController.to.userId;
        await _isar.productDatabaseModels.put(product);

        salesDatabaseModels.add(
          SalesDatabaseModel(
            productId: salesModel.productId,
            salesId: salesId,
            salesDate: allSalesController.selectedSalesDate,
            dateCreated: now,
            quantity: double.parse(salesModel.quantity),
            price: double.parse(salesModel.price),
            customerId: allSalesController.customerDatabaseModel?.customerId,
            salesPaymentId: salesPaymentId,
            addedByUserId: appController.userId,
            companyId: appController.companyId,
          ),
        );
        //     // await _isar.logProductDatabaseModels.put(
        //     //   LogProductDatabaseModel(
        //     //     productId: logProduct.productId,
        //     //     productName: logProduct.productName,
        //     //     cost: logProduct.cost,
        //     //     price: logProduct.price,
        //     //     quantityOnHand: quantityOnHand,
        //     //     reorderQuantity: logProduct.reorderQuantity,
        //     //     unitOfMeasurementId: logProduct.unitOfMeasurementId,
        //     //     createdByUserId: logProduct.createdByUserId,
        //     //     modifiedByUserId: AppController.to.userId,
        //     //     dateCreated: logProduct.dateCreated,
        //     //     dateModified: now,
        //     //     addedFrom: salesDC,
        //     //   ),
        //     // );
        //
        //     //
        //
      }
      _isar.salesDatabaseModels.putAll(salesDatabaseModels);
      if (allSalesController.customerDatabaseModel != null) {
        if (allSalesController.customerDatabaseModel?.totalCreditAmount ==
            null) {
          allSalesController.customerDatabaseModel!.totalCreditAmount =
              double.parse(allSalesController.credit);
        } else {
          allSalesController.customerDatabaseModel!.totalCreditAmount =
              allSalesController.customerDatabaseModel!.totalCreditAmount! +
                  double.parse(allSalesController.credit);
        }
        allSalesController.customerDatabaseModel?.lastModifiedByUserId =
            appController.userId;
        allSalesController.customerDatabaseModel?.lastModifiedDate = now;
        await _isar.customerDatabaseModels
            .put(allSalesController.customerDatabaseModel!);
      }
      // if ((allSalesController.transfer.isNotEmpty &&
      //         allSalesController.transfer != '0') ||
      //     (allSalesController.cash.isNotEmpty &&
      //         allSalesController.cash != '0')) {
      _isar.salesPaymentDatabaseModels.put(
        SalesPaymentDatabaseModel(
          cash: isNumeric(allSalesController.cash)
              ? double.parse(allSalesController.cash)
              : 0,
          transfer: isNumeric(allSalesController.transfer)
              ? double.parse(allSalesController.transfer)
              : 0,
          credit: double.parse(allSalesController.credit),
          discount: isNumeric(allSalesController.discount)
              ? double.parse(allSalesController.discount)
              : 0,
          customerId: allSalesController.customerDatabaseModel?.customerId,
          salesPaymentId: salesPaymentId,
          total: double.parse(allSalesController.total),
          addedByUserId: appController.userId,
          dateAdded: now,
        ),
      );
      // }
    });
  }

  static Future<List<PurchaseAvailableDatabaseModel>> getAvailablePurchases(
      {required String productId}) {
    return _isar.purchaseAvailableDatabaseModels
        .filter()
        .group(
            (q) => q.productIdEqualTo(productId).and().quantityGreaterThan(0))
        .findAll();
  }
}
