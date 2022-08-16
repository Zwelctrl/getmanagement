import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/binding/controller_one.dart';
import 'package:learn_getx/courseWorks/binding/presentation2.dart';

class BindindCodes extends StatelessWidget {
  const BindindCodes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binding"),
      ),
      body: Center(
          child: Obx(
        () => Column(
          children: [
            Text("Number is ${Get.find<ControlOne>().count1}"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<ControlOne>().count();
                },
                child: Text("Up")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  // Get.find<ControlOne>().count();
                  Get.to(HomeClass());
                },
                child: Text("Go Home")),
          ],
        ),
      )),
    );
  }
}
