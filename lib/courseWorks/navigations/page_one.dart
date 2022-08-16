import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:learn_getx/courseWorks/navigations/page_two.dart';

class PageOneExp extends StatefulWidget {
  PageOneExp({Key? key}) : super(key: key);

  @override
  State<PageOneExp> createState() => _PageOneExpState();
}

class _PageOneExpState extends State<PageOneExp> {
  TextEditingController textCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageOne"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    Get.to(
                      PageTwoExp(),
                      arguments: textCon.text,
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      // duration: Duration(seconds: 3)
                    );

                    final data = await Get.to(PageTwoExp());
                    print("The Return data from page two is $data");
                  },
                  child: Text("Go To Page Two")),
            ],
          ),
          Container(
            width: 200,
            // height: 0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: textCon,
              ),
            ),
          )
        ],
      ),
    );
  }
}
