import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:learn_getx/courseWorks/navigations/page_one.dart';

class PageTwoExp extends StatefulWidget {
  PageTwoExp({Key? key}) : super(key: key);

  @override
  State<PageTwoExp> createState() => _PageTwoExpState();
}

class _PageTwoExpState extends State<PageTwoExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page_Two"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    Get.back(result: "The Return Data");

                    // Get.off(PageOneExp());
                    // Get.offAll(PageOneExp());
                  },
                  child: Text("Get back to Page One")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            Get.arguments,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
