// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {

  late int user_id;
  late String user_name;
  late String user_email;
  late String user_image;
  late SharedPreferences sh;

  Future<MyServices> init() async {
    sh = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
