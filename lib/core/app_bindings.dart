import 'package:get/get.dart';
import 'package:inventory/core/controller/app_controller.dart';

class ApplicationBindings implements Bindings {
  ApplicationBindings();

  @override
  void dependencies() {
    Get.lazyPut(() => AppController(), fenix: true);
  }
}
