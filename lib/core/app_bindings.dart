import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

class ApplicationBindings implements Bindings {
  ApplicationBindings();

  @override
  void dependencies()  {
    Get.lazyPut(() => AppController());

  }
}
