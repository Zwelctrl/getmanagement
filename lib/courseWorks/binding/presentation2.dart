import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/binding/controller_one.dart';
import 'package:learn_getx/courseWorks/binding/controller_two.dart';

class HomeClass extends StatelessWidget {
  const HomeClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: Obx(
        () => Column(
          children: [
            Text("Number is ${Get.find<ControlTwo>().count2}"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<ControlTwo>().calcu();
                },
                child: Text("Push")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  // Get.find<ControlOne>().count();
                  Get.back();
                },
                child: Text("Go To Binding")),
          ],
        ),
      )),
    );
  }
}
