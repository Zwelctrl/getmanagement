import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InterCon extends GetxController {
  
  void changeLanguage(var lang1, var lang2) {
    var locale = Locale(lang1, lang2);

    Get.updateLocale(locale);
  }
}
