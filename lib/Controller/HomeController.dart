// ignore_for_file: file_names

import 'package:api_test/View/Screens/AddNote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  late TextEditingController search;

  
  addNote(){
    Get.to( () => const AddNotePage());

  }
 

  @override
  void onInit() {
    search = TextEditingController();
    super.onInit();
  }
}