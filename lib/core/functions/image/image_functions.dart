import 'dart:io';

import 'package:folder_file_saver/folder_file_saver.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inventory/add_product/repository/add_product_repository.dart';
import 'package:inventory/signup/repository/signup_repository.dart';
import 'package:path_provider/path_provider.dart';

import 'package:inventory/add_product/controller/add_product_controller.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/routes/route_names.dart';
import 'package:inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:inventory/core/functions/helper_functions.dart';
import 'package:path/path.dart' as path;

import '../../../edit_product/controller/edit_product_controller.dart';
import '../../../signup/controller/signup_controller.dart';

onAddImagePressed() {
  Get.dialog(const AlertDialogOptionSelect(
    title: selectSourceN,
  )).then((value) => unFocus());
}

onDeleteImageButtonPressed() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = Get.find();
    addProductController.productModel.localImagePath = null;
    addProductController.update();
  } else if (currentRoute == RouteName.editProduct) {
    // EditProductController editProductController = Get.find();
    // editProductController.productInfo.update((val) {
    //   val?.localImagePath = null;
    // });
  }
}

onImageSourceButtonPressed({
  required String sourceLocation,
}) async {
  final ImagePicker picker = ImagePicker();
  await picker
      .pickImage(
          source: sourceLocation == galleryN
              ? ImageSource.gallery
              : ImageSource.camera,
          preferredCameraDevice: CameraDevice.front,
          imageQuality: 25)
      .then((value) async {
    if (value != null) {
      String dir = path.dirname(value.path);
      String imageName = generateDatabaseId(
        time: DateTime.now(),
      );
      String newPath =
          path.join(dir, '$imageName${path.extension(value.name)}');
      try {
        await File(value.path).rename(newPath);
        if(Get.currentRoute == RouteName.addProduct){
          AddProductController addProductController = AddProductController.to;
          addProductController.productModel.localImagePath = newPath;
          addProductController.update();
        }else if(Get.currentRoute == RouteName.editProduct){
          EditProductController editProductController = EditProductController.to;
          editProductController.productModel.localImagePath = newPath;
          editProductController.update();
        }

        Get.back();
      } catch (e) {
        showSnackbar(message: unableToLoadImageN, success: false);
      }
      // String currentRoute = Get.currentRoute;
      // if (currentRoute == RouteName.addProduct) {
      //   await FolderFileSaver.saveFileIntoCustomDir(
      //     filePath: newPath,
      //     dirNamed: '/',
      //   ).then((val) async {
      //     final directory = await getTemporaryDirectory();
      //     directory.delete(recursive: true);
      //     Get.back();
      //   });
      // }
    }

    // else if (currentRoute == RouteName.editProduct) {
    //   EditProductController editProductController = Get.find();
    //   editProductController.productInfo.update((val) async {
    //     val?.localImagePath = value?.path;
    //   });
    // } else if (ProductListController.to.selectedId != null) {
    //   await isar.writeTxn(() async {
    //     final dbProduct = await isar.productDatabaseModels
    //         .get(ProductListController.to.selectedId!);
    //     dbProduct?.localImagePath = value?.path;
    //     await isar.productDatabaseModels.put(dbProduct!);
    //   });
    //   ProductListController.to.selectedId = null;
    //   ProductListController.to
    //       .productList(isar.productDatabaseModels.where().findAllSync());
    // }

    // Get.back();
  });
}

saveImageToInternalStorage({required String filePath}) async {
  // String currentRoute = Get.currentRoute;
  // String dir = path.dirname(filePath);
  // String imageName = generateDatabaseId(
  //   time: DateTime.now(),
  // );
  // String newPath = path.join(dir, '$imageName${path.extension(filePath)}');
  // try {
  //   await File(filePath).rename(newPath);
  //   await FolderFileSaver.saveFileIntoCustomDir(
  //     filePath: newPath,
  //     dirNamed: '/',
  //   ).then((value) {
  //     if (currentRoute == RouteName.addProduct) {
  //       AddProductController.to.productModel.localImagePath = value;
  //     }
  //     if (currentRoute == RouteName.editProduct) {
  //       EditProductController.to.productModel.localImagePath = value;
  //     } else if (currentRoute == RouteName.signUp) {
  //       SignupController.to.tempLogoPath = value;
  //     }
  //   });
  // } catch (e) {
  //   showSnackbar(
  //       message:
  //           [RouteName.addProduct, RouteName.editProduct].contains(currentRoute)
  //               ? unableToLoadImageN
  //               : unableToSaveLogoN,
  //       success: false);
  // }
}

clearTemporaryFile() async {
  final directory = await getTemporaryDirectory();
  directory.delete(recursive: true);
}

bool imageExists({required String imagePath, String? id}) {
  if (File(imagePath).existsSync()) {
    return true;
  } else {
    String currentRoute = Get.currentRoute;
    if (currentRoute == RouteName.homepage) {
      SignupRepository.clearImagePath();
    } else if ([RouteName.productDetail, RouteName.productList]
        .contains(currentRoute)) {
      AddProductRepository.clearProductImagePath(productId: id!);
    }
  }
  return false;
}
