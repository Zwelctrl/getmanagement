import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageExp extends StatelessWidget {
  const GetStorageExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailCon = TextEditingController();
    var storage = GetStorage();

    return Scaffold(
        appBar: AppBar(
          title: Text("GetStorage"),
        ),
        body: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailCon,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(emailCon.text)) {
                    storage.write("email", emailCon.text);
                  } else {
                    Get.snackbar(
                      "InCorrect Email",
                      "Please Input Valid Email",
                      colorText: Colors.black,
                      backgroundColor: Colors.amber,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: Text("Write")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  print("The Email is ${storage.read("email")}");
                },
                child: Text("Read"))
          ]),
        ));
  }
}
