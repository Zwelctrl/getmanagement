import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class unKnownRouteExp extends StatefulWidget {
  unKnownRouteExp({Key? key}) : super(key: key);

  @override
  State<unKnownRouteExp> createState() => _unKnownRouteExpState();
}

class _unKnownRouteExpState extends State<unKnownRouteExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THis is unknown page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/First");
              },
              child: Text("Go Anywhere")),
          // Text("${Get.parameters['someValueToShow']}")
        ],
      )),
    );
    ;
  }
}
