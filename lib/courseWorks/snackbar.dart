import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter/material.dart';

class snackBarGetX extends StatefulWidget {
  snackBarGetX({Key? key}) : super(key: key);

  @override
  State<snackBarGetX> createState() => _snackBarGetXState();
}

class _snackBarGetXState extends State<snackBarGetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Snackbar"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Title Text", "Messages for users",

                  backgroundColor: Colors.amber,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  animationDuration: Duration(seconds: 2),
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  snackPosition: SnackPosition.BOTTOM,
                  // forwardAnimationCurve: Curves.bounceIn,
                  boxShadows: [
                    BoxShadow(
                        color: Colors.red,
                        offset: Offset(30, 3),
                        spreadRadius: 20,
                        blurRadius: 20),
                  ],
                  icon: Icon(Icons.send),
                  // shouldIconPulse: true,
                  leftBarIndicatorColor: Colors.red,
                  mainButton: TextButton(
                      onPressed: () {
                        // Get.snackbar("another one", "DJ Khalid",
                        //     snackPosition: SnackPosition.TOP);
                      },
                      child: Text("Trigger")),
                  onTap: (bal) {
                    print("tapped");
                  },
                  // overlayBlur: 3,
                  reverseAnimationCurve: Curves.bounceInOut,
                  forwardAnimationCurve: Curves.slowMiddle,
                  showProgressIndicator: true,
                  progressIndicatorValueColor:
                      AlwaysStoppedAnimation<Color>(Colors.white),
                  progressIndicatorBackgroundColor: Colors.green,
                  snackbarStatus: (e) {
                    print(e);
                  },
                  // userInputForm: Form(
                  //     child: Row(
                  //   children: [Expanded(child: TextField())],
                  // ))
                );
              },
              child: Text("Click Me!"))
        ],
      )),
    );
  }
}
