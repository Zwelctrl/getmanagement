import 'package:get/get.dart';

class MessageData extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'hello' : "Hello",
    },
    'be_BU' : {
      'hello' : "မဂ်လာပါ",
    },
    'fr_FR' : {
      'hello' : "BonJour",
    },
  };
}
