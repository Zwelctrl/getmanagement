import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/binding/bindcodes.dart';
import 'package:learn_getx/courseWorks/binding/presentation2.dart';

class BindBuildersView extends StatelessWidget {
  const BindBuildersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bind Builders ${Get.find<BindBuildCon>().integer}"),
      ),
      body: Center(
          child: Obx(
        () => Column(
          children: [
            Text("Number is ${Get.find<BindBuildCon>().integer}"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<BindBuildCon>().addOn();
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
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  // Get.find<ControlOne>().count();
                  // Get.back();

                  //binding in normal route 
                  Get.to(HomeClass(), binding: BindCodes());
                },
                child: Text("Go To Binding")),
          ],
        ),
      )),
    );
  }
}

class BindBuildCon extends GetxController {
  var integer = 0.obs;
  void addOn() {
    integer++;
  }
}
