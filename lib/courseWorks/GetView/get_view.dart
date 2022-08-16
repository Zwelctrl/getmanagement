import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:learn_getx/courseWorks/GetView/get_view_con.dart';

// class GetViewExp extends GetView<GetViewCon> {

class GetViewExp extends GetWidget<GetViewCon> {
  // produce same hashcode but in same instance (similar wiht GetCiew)

  const GetViewExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put(GetViewCon());
    Get.create(() => GetViewCon());
    return Scaffold(
      appBar: AppBar(
        title: Text("Get View Exp"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("the Value is ${controller.co}")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  // will produce the same hashcode as there's only one instance in Get.put
                  // in Get.create, will produce different instance everytime
                  print(controller.hashCode);
                  controller.incre();
                },
                child: Text("Plus"))
          ],
        ),
      ),
    );
  }
}
