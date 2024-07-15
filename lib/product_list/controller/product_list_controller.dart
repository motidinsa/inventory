import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';

import '../repository/product_list_repository.dart';

class ProductListController extends GetxController {
  bool? isEmpty;
  String searchedText = '';
  List<ProductDatabaseModel> productList = [];
  int? selectedId;

  static ProductListController get to => Get.find();
  @override
  void onInit() {
    productList= ProductListRepository.getAllProducts();
    if(productList.isEmpty){
      isEmpty = true;
    }
    super.onInit();
  }
}
