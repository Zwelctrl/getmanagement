import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Services extends GetxService {
  Future<void> incrementCOunter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print("Pressed $counter times");
    await prefs.setInt('counter', counter);
  }
}
