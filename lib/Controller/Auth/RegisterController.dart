// ignore_for_file: file_names

import 'package:api_test/Core/Classes/Crud.dart';
import 'package:api_test/Core/Classes/Http_Status_Code.dart';
import 'package:api_test/Core/Functions/statusCheck.dart';
import 'package:api_test/Core/constant/links.dart';
import 'package:api_test/View/Screens/Auth/LoginPage.dart';
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

  register() async {
    if (frm.currentState!.validate()) {
      crud = Crud();
      state = "Loading";
      update(); // ***
      var res = await crud.postData(registerLink, {
        "username": username.text.trim(),
        "email": email.text.trim(),
        "password": password.text.trim(),
      });
      if (res == HttpStatus().created) {
        state = "Success";
        update();
        // show a awesome dialog to say thte sucsess
        Get.offAll(() => const LoginPage());
      } else if (res is Map) {
        state = "Fail";
        update(); // ****
        var message = res["resBody"]["message"];
        // print the error in snackbar
      } else if (res == HttpStatus().internet_Failure) {
        state = "Internet";
        update(); // ***
      } else {
        state = "Server";
        update(); // ***
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
}
