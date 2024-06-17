import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_model.dart';
import 'package:my_inventory/homepage/ui/pdftest.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';
import 'package:my_inventory/add_sales/functions/add_sales_helper_functions.dart';
import 'package:my_inventory/add_sales/repository/add_sales_repository.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../../core/controller/app_controller.dart';
import '../../core/ui/alert_dialog/alert_dialog_option_select.dart';

addSalesProduct() {
  unFocus();
  AddSalesController addSalesController = AddSalesController.to;
  addSalesController.salesModels.add(
    SalesModel(
      productId: '',
      productName: '',
      quantity: '',
      price: '',
      totalAmount: 0,
    ),
  );
  addSalesController.update();
}

onAddSalesSaveButtonPressed() async {
  AddSalesController addSalesController = AddSalesController.to;
  addSalesController.isSubmitButtonPressed = true;
  addSalesController.update();
  if (AppController.to.formKey.currentState!.validate()) {
    addSalesController.isLoading = true;
    addSalesController.update();
    try {
      await AddSalesRepository.saveSalesProductToDB();
      showSnackbar(message: successfullyAddedSalesN, success: true);
      // Get.back();
      // final ByteData bytes =
      // await rootBundle.load('assets/images/company-logo.png');
      // File file = File(AppController.to.companyLogo!);
      String? companyLogo = AppController.to.companyLogo;
      Uint8List? byteList;
      if (companyLogo != null) {
        File file = File(companyLogo);
        List<int> imageBytes = file.readAsBytesSync();
        // return Uint8List.fromList(imageBytes);
         byteList = Uint8List.fromList(imageBytes);
      }

      Get.off(pdftest(image: byteList));
    } on Exception {
      showSnackbar(message: someErrorOccurredN, success: false);
    } finally {
      addSalesController.isLoading = false;
      addSalesController.update();
    }
  } else {
    showSnackbar(message: pleaseFillTheRequiredFieldN);
  }
}

onAddSalesTextFieldPressed({
  required String title,
  int? index,
}) {
  AddSalesController addSalesController = AddSalesController.to;
  if (title == RouteName.addSales) {
    addSalesController.searchProductFoundResult =
        AddSalesRepository.getAllProduct();
    Get.dialog(GetBuilder<AddSalesController>(builder: (context) {
      return AlertDialogOptionSelect(
        title: searchProductsN,
        listIndex: index,
      );
    })).then((value) {
      unFocus();
      addSalesController.searchProductFoundResult.clear();
    });
  } else if (title == customerN) {
    addSalesController.searchCustomerFoundResult =
        AddSalesRepository.getAllCustomers();
    Get.dialog(GetBuilder<AddSalesController>(builder: (context) {
      return AlertDialogOptionSelect(
        title: searchCustomersN,
      );
    })).then((value) {
      unFocus();
      addSalesController.searchCustomerFoundResult.clear();
    });
  }
}

onSalesTitleToData({required String title, int? index}) {
  AddSalesController addSalesController = Get.find();
  if (title == RouteName.addSales) {
    return addSalesController.salesModels[index!].productName;
  } else if (title == customerN) {
    return addSalesController.customerDatabaseModel?.name;
  } else if (title == priceN) {
    return addSalesController.salesModels[index!].price;
  } else if (title == creditN) {
    return addSalesController.credit;
  } else if (title == cashN) {
    return addSalesController.cash;
  } else if (title == transferN) {
    return addSalesController.transfer;
  }
  // else if (title == selectN) {
  //   return salesController.customerName;
  // } else if (title == qtyN) {
  //   return salesController.salesModels[index!].quantity;
  // } else if (title == cashN) {
  //   return salesController.cash;
  // } else if (title == transferN) {
  //   return salesController.transfer;
  // } else if (title == creditN) {
  //   return salesController.credit;
  // }
}

onSalesAlertDialogOption({required String title, required int index}) {
  AddSalesController salesController = Get.find();
  if (title == searchProductsN) {
    return salesController.searchProductFoundResult[index].id;
  } else if (title == searchCustomersN) {
    return salesController.searchCustomerFoundResult[index].id;
  }
}

onSalesTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  AddSalesController addSalesController = AddSalesController.to;
  if (title == searchCustomersN) {
    addSalesController.searchCustomerFoundResult =
        AddSalesRepository.searchCustomer(data: data);
  } else if (title == searchProductsN) {
    addSalesController.searchProductFoundResult =
        AddSalesRepository.searchProduct(data: data);
  } else if (title == discountN) {
    addSalesController.discount = data;
  } else if (title == cashN) {
    addSalesController.cash = data;
    if (isNumeric(addSalesController.total) &&
        isNumeric(data) &&
        isNumeric(addSalesController.transfer)) {
      addSalesController.credit = getFormattedNumberWithoutComa(
          (double.parse(addSalesController.total) -
              double.parse(data) -
              double.parse(addSalesController.transfer)));
      // salesController.cash = data;
    }
    // else {
    //   addSalesController.credit = '0';
    // }
  } else if (title == transferN) {
    addSalesController.transfer = data;
    if (isNumeric(addSalesController.total) &&
        isNumeric(addSalesController.cash) &&
        isNumeric(data)) {
      addSalesController.credit = getFormattedNumberWithoutComa(
          (double.parse(addSalesController.total) -
              double.parse(addSalesController.cash) -
              double.parse(data)));
    }
    // else {
    //   addSalesController.credit = '0';
    // }
    // addSalesController.update();
  } else {
    // SalesModel salesModel = addSalesController.salesModels[index!];
    if (title == qtyN) {
      SalesModel sales = addSalesController.salesModels[index!];

      if (data.isEmpty) {
        sales.quantity = '';
        sales.totalAmount = 0;
        addSalesController.cash = '';
        addSalesController.credit = '0';
      } else {
        sales.quantity = data;
        if (isNumeric(sales.quantity) && isNumeric(sales.price)) {
          sales.totalAmount = double.parse(data) * double.parse(sales.price);
          addSalesController.cash =
              getFormattedNumberWithoutComa(getSalesTotal());
          addSalesController.transfer = '';
          addSalesController.credit = '0';
        }
        // else {
        //   sales.totalAmount = 0;
        //   addSalesController.cash = '';
        //   addSalesController.credit = '0';
        // }
      }
      // });
      // addSalesController.update();
    }
  }

  addSalesController.update();
}

onSalesSearchProductAlertDialogOptionSelect(
    {int? listIndex, int? index, required String title}) {
  final AddSalesController addSalesController = AddSalesController.to;
  if (title == searchProductsN) {
    ProductDatabaseModel productDatabaseModel =
        addSalesController.searchProductFoundResult[index!];
    bool productExists = addSalesController.salesModels.any(
        (salesModel) => salesModel.productId == productDatabaseModel.productId);

    //   if (!productExists) {

    if (!productExists) {
      SalesModel salesModel = addSalesController.salesModels[listIndex!];
      salesModel.productId = productDatabaseModel.productId;
      salesModel.productName = productDatabaseModel.productName;
      salesModel.price = emptyIfDefaultValue(
          getFormattedNumberWithoutComa(productDatabaseModel.price));
      if (salesModel.quantity.isNotEmpty && isNumeric(salesModel.quantity)) {
        salesModel.totalAmount =
            double.parse(salesModel.quantity) * productDatabaseModel.price;
        addSalesController.cash =
            getFormattedNumberWithoutComa(salesModel.totalAmount);
        addSalesController.transfer = '';
        addSalesController.credit = '0';
      }
    } else {
      if (productDatabaseModel.productId !=
          addSalesController.salesModels[listIndex!].productId) {
        // Get.closeCurrentSnackbar();
        addSalesController.salesModels.removeAt(listIndex);
        showSnackbar(message: productAlreadySelectedN);
      }
    }
  } else if (title == searchCustomersN) {
    CustomerDatabaseModel customerDatabaseModel =
        addSalesController.searchCustomerFoundResult[index!];
    addSalesController.customerDatabaseModel = customerDatabaseModel;
  }
  // if (title == searchProductsN) {
  //   ProductDatabaseModel productDatabaseModel =
  //       isar.productDatabaseModels.getSync(isarId)!;
  //
  //   bool productExists = salesController.salesModels.any(
  //       (salesModel) => salesModel.productId == productDatabaseModel.productId);
  //
  //   if (!productExists) {
  //     SalesModel sales = salesController.salesModels[listIndex!];
  //     // salesController.salesModels[listIndex!].update((sales) {
  //     sales.productName = productDatabaseModel.productName;
  //     sales.productId = productDatabaseModel.productId;
  //     sales.price = productDatabaseModel.price.toString();
  //     if (sales.quantity.isNotEmpty && isNumeric(sales.quantity)) {
  //       sales.totalAmount =
  //           double.parse(sales.quantity) * productDatabaseModel.price;
  //     }
  //     // });
  //     salesController.update();
  //     Get.back();
  //   } else {
  //     if (productDatabaseModel.productId !=
  //         salesController.salesModels[listIndex!].productId) {
  //       Get.closeCurrentSnackbar();
  //       salesController.salesModels.removeAt(listIndex);
  //       Get.showSnackbar(const GetSnackBar(
  //         messageText: Text(
  //           'Product already exists',
  //           style: TextStyle(
  //               fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
  //         ),
  //         duration: Duration(seconds: 2),
  //         margin: EdgeInsets.all(10),
  //         borderRadius: 10,
  //       ));
  //       Get.key.currentState?.pop();
  //     }
  //     else {
  //       Get.back();
  //     }
  //   }
  // } else if (title == searchCustomersN) {
  //   CustomerDatabaseModel customerDatabaseModel =
  //       isar.customerDatabaseModels.getSync(isarId)!;
  //   salesController.customerId = customerDatabaseModel.customerId;
  //   salesController.customerName = customerDatabaseModel.name;
  //   salesController.customerPhone = customerDatabaseModel.phoneNumber;
  //   salesController.customerAddress = customerDatabaseModel.address;
  //   salesController.update();
  //   Get.back();
  // }
  addSalesController.update();
  Get.back();
}

saveSalesProductToDB() async {
  AddSalesRepository.saveSalesProductToDB();
  final ByteData bytes =
      await rootBundle.load('assets/images/company-logo.png');
  final Uint8List byteList = bytes.buffer.asUint8List();

  Get.off(pdftest(image: byteList));
}
