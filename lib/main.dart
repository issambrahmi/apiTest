import 'package:api_test/Core/Classes/Crud.dart';
import 'package:api_test/Core/constant/links.dart';
import 'package:api_test/View/Screens/Auth/LoginPage.dart';
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

late int userId;
void main() async {
  bool a = await getUserInfo();
  runApp(MyApp(isValidToken: a));
}

class MyApp extends StatelessWidget {
  final bool isValidToken;
  const MyApp({super.key, required this.isValidToken});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: isValidToken == true ? const HomePage() : const LoginPage());
  }
}

getUserInfo() async {
  Crud crud = Crud();

  var res = await crud.postData(tokenLink, {"token": "token"});
  if (res["state"] == "success") {
    userId = res["user_id"];
    return true;
  }
  return false;
}
