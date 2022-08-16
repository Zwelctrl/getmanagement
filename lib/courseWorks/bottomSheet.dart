import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetBottomSheetExp extends StatefulWidget {
  GetBottomSheetExp({Key? key}) : super(key: key);

  @override
  State<GetBottomSheetExp> createState() => _GetBottomSheetExpState();
}

class _GetBottomSheetExpState extends State<GetBottomSheetExp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "bottom Sheet",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Sheet"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.bottomSheet(
                          Container(
                            child: Wrap(
                              children: [
                                ListTile(
                                  leading: Text("Light Theme"),
                                  trailing: ElevatedButton(
                                      onPressed: () {
                                        Get.changeTheme(ThemeData.dark());
                                      },
                                      child: Icon(Icons.dark_mode)),
                                ),
                                ListTile(
                                  leading: Text("Dark Theme"),
                                  trailing: ElevatedButton(
                                      onPressed: () {
                                        Get.changeTheme(ThemeData.light());
                                      },
                                      child: Icon(Icons.light)),
                                )
                              ],
                            ),
                          ),
                          barrierColor: Colors.green.withOpacity(0.4),
                          backgroundColor: Colors.amber.withOpacity(0.6),
                          isDismissible: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.red, width: 1)),
                          enableDrag: false,
                        );
                      },
                      child: Text("Click ME!"))
                ],
              )
            ],
          ),
        ));
  }
}
