import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/test02.dart';

class Text01 extends StatelessWidget {
  // const Text01({Key? key}) : super(key: key);
  // var stu = Student();
  // void toUpperCase() {
  //   stu.name.value = stu.name.value.toUpperCase();
  // }

  // var stu = Student(name: "aung aung", age: 40.6).obs;
  var stu = Student(name: "belthu", age: 55).obs;

  // void changeToUpperCase() {
  //   stu.value.name = stu.value.name.toUpperCase();
  //   // stu.value.age = stu.value.age.floorToDouble();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test 01"),
      ),
      body: Center(child: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name is ${stu.value.name}"),
            ElevatedButton(
                onPressed: () {
                  // stu.value.copyWith(
                  //   // name: stu.value.name.toUpperCase(),
                  //   name: "Phyu Sin"
                  // );
                  stu.update((stu) {
                    // stu!.name = '';
                    stu!.name = stu.name.toString().toUpperCase();
                    // Student.name = Student.name.toString().toUpperCase();
                  });
                  print("Pressed");
                },
                child: Text("Change"))
          ],
        );
      })),
    );
  }
}










// stu.value.copyWith(
//                     name: stu.value.name.toUpperCase(),
//                   );
//                   stu.name.value = stu.name.value.toUpperCase();
//                   changeToUpperCase();
