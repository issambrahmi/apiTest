import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "اختر اللغة",
        },
        "en": {
          "1": "choose language",
        }
      };
}
  // use .tr to translate 
  // exmple ******  text: "1".tr *******