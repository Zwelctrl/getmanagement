import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:learn_getx/courseWorks/Rx_obx/controller001.dart';
import 'package:learn_getx/courseWorks/test02.dart';

class PresentationExp extends StatelessWidget {
  // const PresentationExp({Key? key}) : super(key: key)

  MyController myCon = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Presentation"),
      ),
      body: Center(child: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("Name is ${myCon.person.value.name}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  myCon.convertToUpper();
                },
                child: Icon(Icons.trip_origin))
          ],
        );
      })),
    );
  }
}
