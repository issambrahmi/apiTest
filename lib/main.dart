// ignore_for_file: non_constant_identifier_names

import 'package:api_test/Core/Localization/Translition.dart';
import 'package:api_test/Core/Localization/changeLocal.dart';
import 'package:api_test/Core/Services/services.dart';
import 'package:api_test/View/Screens/Auth/LoginPage.dart';
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';



void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      home: middleWare()
      );
  }
}

middleWare(){
  MyServices myServices = Get.find();

  // ignore: unrelated_type_equality_checks
  if(myServices.sh.getString("isLogin") == null || myServices.sh.getString("isLogin") == false){
    return HomePage();
  }else {
    // test the token
  }
}

// late int userId;
// void main() async {
//   bool a = await getUserInfo();
//   runApp(MyApp(isValidToken: a));
// }

// class MyApp extends StatelessWidget {
//   final bool isValidToken;
//   const MyApp({super.key, required this.isValidToken});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         home: isValidToken == true ? const HomePage() : const LoginPage());
//   }
// }

// getUserInfo() async {
//   Crud crud = Crud();

//   var res = await crud.postData(tokenLink, {"token": "token"});
//   if (res["state"] == "success") {
//     userId = res["user_id"];
//     return true;
//   }
//   return false;
// }


