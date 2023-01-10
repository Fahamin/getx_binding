import 'package:get/get.dart';
import 'package:getx_binding/Controller/home_controller.dart';

class HomeControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());

  }

}