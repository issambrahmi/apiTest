// ignore_for_file: file_names

import 'package:api_test/Core/Classes/Crud.dart';
import 'package:api_test/Core/Functions/StateRequest.dart';
import 'package:api_test/Core/constant/links.dart';
import 'package:api_test/View/Screens/Auth/RegisterPage.dart';
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> frm = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  String state = "";

  login() async {
    if (frm.currentState!.validate()) {
      Crud crud = Crud();
      state = "Loading";
      update(); // **
      var res = await crud.postData(loginLink, {
        "user_email": email.text.trim(),
        "user_password": password.text.trim()
      });
      res = statusVal(res);
      if (res == "Success") {
        Get.offAll(() => HomePage());
      }
    }
  }

  goToRegister() {
    Get.to(() => const RegisterPage());
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
