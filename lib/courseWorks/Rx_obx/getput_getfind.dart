import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/Rx_obx/controller001.dart';

class GetPut extends StatelessWidget {
  // const GetPut({Key? key}) : super(key: key);

  // create the instance
  // MyController concon = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Presentation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
              init: MyController(),
              builder: (controllerData) =>
                  Text("Temperature Count ${controllerData.person.value.temp}"),
            ),
            ElevatedButton(
                onPressed: () {

                  // instance of MyController cant be find outside of GetXController
                  Get.find<MyController>().convertToUpper();
                },
                child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}
