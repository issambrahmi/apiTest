import 'package:api_test/Core/Services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sh.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() { 
    String? sharedPrefLang = myServices.sh.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      String deviceLang = Get.deviceLocale!.languageCode;
      if(deviceLang == "ar") {
        language = Locale(Get.deviceLocale!.languageCode);
        myServices.sh.setString("Lang", "ar");
      }else {
        language = Locale(Get.deviceLocale!.languageCode);
        myServices.sh.setString("Lang", "en");
      }
    }
    super.onInit();
  }
}