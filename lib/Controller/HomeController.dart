// ignore_for_file: file_names

import 'package:api_test/View/Screens/AddNote.dart';
import 'package:api_test/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class HomeController extends GetxController{
  late TextEditingController search;

  
  addNote(){
  //    String token ="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c";
  // var a = JwtDecoder.decode(token);
  // print(a);
  
  //  String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNjg2NTAzNzY5fQ.PLDnRyBJIQLaZ_cwAsYqvNVB08MsPfn3LcBYG4HeTLY";

  // bool b = JwtDecoder.isExpired(token);
  // print("*************$b");

    Get.to( () => const AddNotePage());

  }
 

  @override
  void onInit() {
    search = TextEditingController();
    super.onInit();
  }
}