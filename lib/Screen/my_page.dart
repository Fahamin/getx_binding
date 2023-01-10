import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/my_controller.dart';
import '../routes.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'The valu is ${Get.find<MyController>().count}',
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () => Get.find<MyController>().increment(),
                child: Text('Go HomePage')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Get.back(), child: Text('Increment')),
          ],
        ),
      ),
    );
  }
}
