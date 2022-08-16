import 'package:get/get.dart';

class TestMeController extends GetxController {
  var count = 0;

  Future<void> increbytime() async {
    await Future.delayed(Duration(seconds: 3));
    this.count++;
    update();
  }

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   print("onInit Opened");
  //   increbytime();
  //   super.onInit();
  // }

  @override
  void onClose() {
    // TODO: implement onClose
    print("onClosed opened");
    super.onClose();
  }
}
