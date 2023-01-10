import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/Controller/my_controller.dart';
import 'package:getx_binding/routes.dart';
import 'binding/allControllerBinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.screen1,
      initialBinding: AllControllerBinding(),
      title: "Binding",
      getPages: appRoutes(),
    );
  }
}
