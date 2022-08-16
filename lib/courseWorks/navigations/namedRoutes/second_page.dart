import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondPageExp extends StatefulWidget {
  SecondPageExp({Key? key}) : super(key: key);

  @override
  State<SecondPageExp> createState() => _SecondPageExpState();
}

class _SecondPageExpState extends State<SecondPageExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed(
                    "/Third?channel=Refresh Coders&content=Flutter GetX");
              },
              child: Text("Go To Third Page"))
        ],
      )),
    );
    ;
  }
}
