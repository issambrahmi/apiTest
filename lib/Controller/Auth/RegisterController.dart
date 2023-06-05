// ignore_for_file: file_names

import 'package:api_test/Core/Classes/Crud.dart';
import 'package:api_test/Core/Functions/StateRequest.dart';
import 'package:api_test/Core/constant/links.dart';
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> frm = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late Crud crud;
  String state = "";

  register() async{
    if (frm.currentState!.validate()) {
      crud = Crud();
      state = "Loading";
      update(); // ***
      var res = await crud.postData(registerLink, {
        "user_name": username.text.trim(),
        "user_email": email.text.trim(),
        "user_phone": "01020034050",
        "user_password": password.text.trim(),
      });
      state = statusVal(res);
      if(state == "Success"){
        Get.offAll( () => HomePage());
      }
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }
}
