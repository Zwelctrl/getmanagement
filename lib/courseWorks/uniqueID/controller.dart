import 'package:get/get.dart';

class UniCon extends GetxController {
  int num = 0;

  void incre() {
    num++;
    update(["txtCount"]);
  }
}
