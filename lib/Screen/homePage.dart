import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_binding/Controller/home_controller.dart';

import '../Controller/my_controller.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              'The value is ${Get.find<HomeController>().count}',
              style: TextStyle(fontSize: 25),
            )),
            ElevatedButton(
                onPressed: () => Get.find<HomeController>().increment(),
                child: Text('Increment')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.screen2),
                child: Text('Go MyPage')),
          ],
        ),
      ),
    );

  }
}
