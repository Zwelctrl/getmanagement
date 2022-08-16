import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class outPage extends StatelessWidget {
  const outPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THis is the outer page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/notFound");
              },
              child: Text("Go To First")),
          Text("${Get.parameters['someValueToShow']}")
        ],
      )),
    );
  }
}
