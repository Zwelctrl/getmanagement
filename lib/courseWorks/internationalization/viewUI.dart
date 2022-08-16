import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/internationalization/inter_controller.dart';

class InternationalizationUI extends StatelessWidget {
  // const InternationalizationUI({Key? key}) : super(key: key);

  InterCon interCon = Get.put(InterCon());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internationalization"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'hello'.tr,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                interCon.changeLanguage('be', 'BU');
              },
              child: Text("Burmese")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                interCon.changeLanguage('en', 'US');
              },
              child: Text("English")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                interCon.changeLanguage('fr', 'FR');
              },
              child: Text("France"))
        ],
      )),
    );
  }
}
