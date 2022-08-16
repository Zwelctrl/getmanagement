import 'package:get/get.dart';

class WorkerCon extends GetxController {
  var count = 0.obs;

  void lvlup() {
    count++;
  }

  // workers are below

  @override
  void onInit() {
    // TODO: implement onInit

    // called every time when the varibles is changed
    // ever(count, (x) => print(count));

    // called every time when the list of varibles is changed
    // everAll([count], (d) => print("everall error"));

    // works only once
    // once(count, (x) => print('Once is out'));

    // waits for time when it's triggered, then its work out
    debounce(count, (x) => print("obito, orphan, orange, oscello"),
        time: Duration(milliseconds: 500));

    // creates an interval of time after user has interacted
    // interval(count, (v) => print("oh there he pressed it"),
    //     time: Duration(seconds: 1));
    super.onInit();
  }
}
