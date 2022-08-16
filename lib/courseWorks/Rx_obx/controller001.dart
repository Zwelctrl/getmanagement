import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/Rx_obx/data.dart';
import 'package:learn_getx/courseWorks/test02.dart';

class MyController extends GetxController {
  // var person = Student(name: "thit lwin soe", age: 29).obs;

  // void convertToUpper() {
  //   person.update((val) {
  //     person.value.name = person.value.name.toUpperCase();
  //   });
  // }

  // void increment() {
  //   person.value.age++;
  // }

  var person = StaffData(temp: 60).obs;

  void convertToUpper() {
    person.update((per) {
      person.value.temp++;
    });
  }
}

class NewController extends GetxController {
  var vec = Vehicles(wheels: 4).obs;

  // int randomNum = 1;

  void pushUp() {
    vec.value.wheels++;
    update();
  }
}
