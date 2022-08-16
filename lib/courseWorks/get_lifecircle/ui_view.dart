import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/get_lifecircle/test_con.dart';

class LifeCycleExp extends StatelessWidget {
  // const LifeCycleExp({Key? key}) : super(key: key);

  TestMeController testmeCon = Get.put(TestMeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET LifeCycle"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GetBuilder<TestMeController>(
              init: TestMeController(),

              // pls check controller/onInit
              initState: (state) => testmeCon.increbytime(),
              builder: (controller) => Text("Value is ${controller.count}"))
        ]),
      ),
    );
  }
}
