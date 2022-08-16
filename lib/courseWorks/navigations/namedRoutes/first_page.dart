import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class FirstPageExp extends StatelessWidget {
  const FirstPageExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/nodsd");
              },
              child: Text(
                "Go To Second Page",
                style: TextStyle(color: Colors.red),
              )),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/out/123456879");
              },
              child: Text("Go To Outer Page"))
        ],
      )),
    );
  }
}
