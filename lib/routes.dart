import 'package:get/get.dart';
import 'package:getx_binding/Controller/home_controller.dart';

import 'Screen/homePage.dart';
import 'Screen/my_page.dart';
import 'binding/HomeControllerBinding.dart';
import 'binding/myControllerBindn.dart';

class Routes {
  static String screen1 = '/home';

  static String screen2 = '/page2';

  static String screen3 = '/page3';
}

appRoutes() => [
      GetPage(
          name: Routes.screen1,
          page: () => HomePage(),
          binding: HomeControllerBinding()),
      GetPage(
          name: Routes.screen2,
          page: () => MyPage(),
          binding: MyControllerBindind()),
    ];
