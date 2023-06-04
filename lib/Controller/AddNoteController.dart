// ignore_for_file: file_names
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNoteController extends GetxController{
  late TextEditingController title;
  late TextEditingController content;


  addNote(){
    Get.offAll( () => HomePage());
  }


  @override
  void onInit() {
     title = TextEditingController();
     content = TextEditingController();
    super.onInit();
  }
}