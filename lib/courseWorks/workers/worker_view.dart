import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:learn_getx/courseWorks/workers/worker_con.dart';

class WorkersView extends StatelessWidget {
  // const WorkersView({Key? key}) : super(key: key);

  WorkerCon wcon = Get.put(WorkerCon());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workers"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                wcon.lvlup();
              },
              child: Text("Elevate")),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            onChanged: (e) {
              wcon.lvlup();
            },
          )
        ],
      ),
    );
  }
}
