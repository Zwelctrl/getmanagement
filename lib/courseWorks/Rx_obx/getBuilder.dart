import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/Rx_obx/controller001.dart';

class GetBuilderExp extends StatelessWidget {
  // const GetBuilderExp({Key? key}) : super(key: key);

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
            GetBuilder<NewController>(
                init: NewController(),
                builder: (con) {
                  return Text("Number Status ${con.vec.value.wheels}");
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<NewController>().pushUp();
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
