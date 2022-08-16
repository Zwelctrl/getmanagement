import 'package:get/get.dart';
import 'package:learn_getx/courseWorks/binding/controller_one.dart';
import 'package:learn_getx/courseWorks/binding/controller_two.dart';

class BindCodes extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ControlOne());
    Get.lazyPut(() => ControlTwo());
  }
}

// if you use bindings, you dont have to intiate the instance of the controllers everytimes 
