import 'package:get/get.dart';
import 'package:getx_binding/Controller/home_controller.dart';
import 'package:getx_binding/Controller/my_controller.dart';

class AllControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
    Get.lazyPut(() => HomeController());
  }
}
