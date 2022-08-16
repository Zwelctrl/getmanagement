import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test02 extends StatelessWidget {
  const Test02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test 02"),
      ),
    );
  }
}

class Student {
  // RxString name = RxString("mgmg");
  // var name = "mgmg".obs;

  String name = "kyaw gyi";
  double age = 40.5;

  Student({required this.name, required this.age});

  copyWith({String? name, double? age}) {
    return Student(name: name ?? this.name, age: age ?? this.age);
  }
}










/**
 * copyWith({String? name, double? age}) {
    return Student(name: name ?? this.name, age: age ?? this.age);
  }
 */
