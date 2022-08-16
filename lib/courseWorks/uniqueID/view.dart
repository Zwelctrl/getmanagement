import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learn_getx/courseWorks/uniqueID/controller.dart';

class viewExp extends StatelessWidget {
  // const viewExp({Key? key}) : super(key: key);

  UniCon ucon = Get.put(UniCon());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Text"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<UniCon>(
              id: "txtCount",
              builder: (e) {
                return Text("Number is ${e.num}");
              }),
              GetBuilder<UniCon>(
              // id: "txtCount",
              builder: (e) {
                return Text("Number is ${e.num}");
              }),
          ElevatedButton(
              onPressed: () {
                Get.find<UniCon>().incre();
                // ucon.incre();
              },
              child: Text("Press"))
        ],
      ),
    );
  }
}
