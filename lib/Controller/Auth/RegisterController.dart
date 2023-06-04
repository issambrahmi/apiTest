// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  GlobalKey<FormState> frm = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;

  
    register(){
      if(frm.currentState!.validate()){
        
      }
    }



  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username= TextEditingController();
    super.onInit();
  }

}