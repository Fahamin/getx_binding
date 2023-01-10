import 'package:get/get.dart';
import 'package:getx_binding/Controller/my_controller.dart';

class MyControllerBindind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
  }
}
