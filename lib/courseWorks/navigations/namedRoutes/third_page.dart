import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ThirdPageExp extends StatefulWidget {
  ThirdPageExp({Key? key}) : super(key: key);

  @override
  State<ThirdPageExp> createState() => _ThirdPageExpState();
}

class _ThirdPageExpState extends State<ThirdPageExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Get.toNamed("/");
                Get.offNamed("/");
              },
              child: Text("Go To First Page")),
          Text(
              "Group Name is ${Get.parameters['channel']} and the lessons name is ${Get.parameters['content']}")
        ],
      )),
    );
  }
}
