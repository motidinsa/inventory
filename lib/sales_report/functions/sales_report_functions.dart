import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/sales/sales_database_model.dart';
import 'package:inventory/sales_report/controller/sales_report_controller.dart';
import 'package:inventory/sales_report/model/sales_report_model.dart';
import 'package:isar/isar.dart';

onSalesReportDateSelectionSaveButtonPressed() {
  SalesReportController salesReportController = Get.find();
  final Isar _isar = Get.find();
  salesReportController.salesReportModels.clear();
  if (salesReportController.startDate != null &&
      salesReportController.endDate != null) {
    _isar.salesDatabaseModels
        .filter()
        .salesDateBetween(
          DateUtils.dateOnly(salesReportController.startDate!),
          DateUtils.addDaysToDate(
            salesReportController.endDate!,
            1,
          ).subtract(Duration(microseconds: 1)),
        )
        .findAllSync()
        .forEach((element) {
          salesReportController.salesReportModels.insert(
            0,
            SalesReportModel(
              salesDate: element.salesDate,
              quantity: element.quantity,
              productName:
                  _isar.productDatabaseModels
                      .filter()
                      .productIdEqualTo(element.productId)
                      .findFirstSync()!
                      .productName,
              totalCost: element.cost * element.quantity,
              totalPrice: element.price * element.quantity,
            ),
          );
        });
  } else if (salesReportController.startDate != null &&
      salesReportController.endDate == null) {
    _isar.salesDatabaseModels
        .filter()
        .salesDateGreaterThan(
          DateUtils.dateOnly(
            salesReportController.startDate!,
          ).subtract(Duration(microseconds: 1)),
          // DateUtils.addDaysToDate(
          //   salesReportController.endDate!,
          //   1,
          // ).subtract(Duration(microseconds: 1)),
        )
        .findAllSync()
        .forEach((element) {
          salesReportController.salesReportModels.insert(
            0,
            SalesReportModel(
              salesDate: element.salesDate,
              quantity: element.quantity,
              productName:
                  _isar.productDatabaseModels
                      .filter()
                      .productIdEqualTo(element.productId)
                      .findFirstSync()!
                      .productName,
              totalCost: element.cost * element.quantity,
              totalPrice: element.price * element.quantity,
            ),
          );
        });
  }else if (salesReportController.startDate == null &&
      salesReportController.endDate != null) {
    _isar.salesDatabaseModels
        .filter()
        .salesDateLessThan(
          DateUtils.addDaysToDate(
            salesReportController.endDate!,1
          ),
          // DateUtils.addDaysToDate(
          //   salesReportController.endDate!,
          //   1,
          // ).subtract(Duration(microseconds: 1)),
        )
        .findAllSync()
        .forEach((element) {
          salesReportController.salesReportModels.insert(
            0,
            SalesReportModel(
              salesDate: element.salesDate,
              quantity: element.quantity,
              productName:
                  _isar.productDatabaseModels
                      .filter()
                      .productIdEqualTo(element.productId)
                      .findFirstSync()!
                      .productName,
              totalCost: element.cost * element.quantity,
              totalPrice: element.price * element.quantity,
            ),
          );
        });
  }
  salesReportController.update();
  Get.back();
}
