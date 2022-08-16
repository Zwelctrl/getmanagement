import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ReactiveExp extends StatelessWidget {
  // const ReactiveExp({Key? key}) : super(key: key);

  RxInt count = RxInt(0);
  // var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reactive"),
        ),
        body: Center(child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Followers $count"),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Add"))
            ],
          );
        })));
  }
}
