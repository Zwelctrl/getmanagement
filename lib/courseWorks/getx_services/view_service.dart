import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/getx_services/getxservice_con.dart';


import 'getxservice_con.dart';

Future<void> initService() async {
  print('Starting Services ...');
  Get.putAsync<Services>(() async => await Services());
  print('All services adone ...');
}

class GetXServices extends StatelessWidget {
  const GetXServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X Services"),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Get.find<Services>().incrementCOunter();
              },
              child: Text("Increment"))
        ]),
      ),
    );
  }
}


