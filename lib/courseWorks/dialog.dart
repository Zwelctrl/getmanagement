import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetDialogExp extends StatefulWidget {
  GetDialogExp({Key? key}) : super(key: key);

  @override
  State<GetDialogExp> createState() => _GetDialogExpState();
}

class _GetDialogExpState extends State<GetDialogExp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                          // backgroundColor: Colors.red,
                          title: "Dialog title",
                          middleText: "Informations for users",
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Data Loading")
                            ],
                          ),
                          // textConfirm: "Confirm",
                          confirm: Text("Conform"),
                          confirmTextColor: Colors.red,
                          // cancel: ElevatedButton(
                          //     onPressed: () {}, child: Text("cancelEle")),
                          textCancel: "Cancel",
                          cancelTextColor: Colors.grey,
                          actions: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("cancel")),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Proceed")),
                          ],
                          barrierDismissible: false);
                    },
                    child: Text("Get Dialog"))
              ],
            )
          ],
        ),
      ),
    );
  }
}



// 
// https://www.pornhub.com/view_video.php?viewkey=ph60827f1161d73