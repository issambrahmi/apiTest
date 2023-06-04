import 'package:api_test/Core/Functions/CheckInternet.dart';
import 'package:api_test/View/Screens/Auth/LoginPage.dart';
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage()
      );
  }
}