import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/main.dart';

class PurchaseController extends GetxController {
  DateTime now = DateTime.now();
  RxList<ProductDatabaseModel> searchProductFoundResult =
      <ProductDatabaseModel>[].obs;
  RxList<VendorDatabaseModel> searchVendorFoundResult =
      <VendorDatabaseModel>[].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
  String? vendorId;
  String? vendorName;
  String? vendorPhone;
  String? vendorAddress;
  String? vendorContactPerson;
  DateTime purchaseDate = DateTime.now();
  var isLocalSaveLoading = false.obs;
  var purchaseModels = [
    PurchaseModel(
      productId: '',
      productName: '',
      quantity: '',
      totalAmount: 0,
      cost: '',
    ).obs
  ].obs;

  static PurchaseController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(purchaseN());
    searchProductFoundResult(isar.productDatabaseModels.where().findAllSync());
    super.onInit();
  }

  addPurchaseProduct() {
    unFocus();
    purchaseModels.add(
      PurchaseModel(
        productId: '',
        productName: '',
        quantity: '',
        totalAmount: 0,
        cost: '',
      ).obs,
    );
  }

  savePurchaseProductToDB() async {
    DateTime now = DateTime.now();
    isLocalSaveLoading(true);
    for (int i = 0; i < purchaseModels.length; i++) {
      PurchaseModel purchaseModel = purchaseModels[i].value;
      String key = generateDatabaseId(time: now, identifier: i);
      await isar.writeTxn(() async {
        ProductDatabaseModel? currentProduct = await isar.productDatabaseModels
            .filter()
            .productIdEqualTo(purchaseModel.productId)
            .findFirst();
        double currentQty = currentProduct!.quantityOnHand +
            double.parse(purchaseModel.quantity);
        currentProduct.cost = double.parse(purchaseModel.cost);
        currentProduct.quantityOnHand = currentQty;
        currentProduct.lastDateModified = now;
        currentProduct.lastModifiedByUserId = AppController.to.userId.value;

        await isar.productDatabaseModels.put(currentProduct);
        await isar.purchaseAvailableDatabaseModels.put(
          PurchaseAvailableDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: purchaseDate,
            dateCreated: now,
            customerId: purchaseModel.customerId,
            vendorId: purchaseModel.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );
        await isar.purchaseAllDatabaseModels.put(
          PurchaseAllDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: purchaseDate,
            dateCreated: now,
            customerId: purchaseModel.customerId,
            vendorId: purchaseModel.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );

        await isar.logProductDatabaseModels.put(LogProductDatabaseModel(
          productName: currentProduct.productName,
          description: currentProduct.description,
          categoryId: currentProduct.categoryId,
          cost: double.parse(purchaseModel.cost),
          price: currentProduct.price,
          createdByUserId: currentProduct.createdByUserId,
          dateCreated: currentProduct.dateCreated,
          quantityOnHand: currentQty,
          reorderQuantity: currentProduct.reorderQuantity,
          unitOfMeasurementId: currentProduct.unitOfMeasurementId,
          localImagePath: currentProduct.localImagePath,
          userAssignedProductId: currentProduct.userAssignedProductId,
          productId: currentProduct.productId,
          dateModified: now,
          modifiedByUserId: AppController.to.userId.value,
          addedFrom: purchaseDC,
        ));
      });
    }
    // purchaseModels.asMap().forEach((index, purchaseModel) async {
    //
    // });
    isLocalSaveLoading(false);
    Get.back();
  }
}
