// ignore_for_file: file_names

import 'package:api_test/Core/Classes/Crud.dart';
import 'package:api_test/Core/Classes/Http_Status_Code.dart';
import 'package:api_test/Core/Custum/SnackBar.dart';
import 'package:api_test/Core/Services/services.dart';
import 'package:api_test/Core/constant/links.dart';
import 'package:api_test/View/Screens/Auth/RegisterPage.dart';
import 'package:api_test/View/Screens/HomePage.dart';
import 'package:api_test/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> frm = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  String state = "";
  MyServices myServices = Get.find();


  show(BuildContext context) {
    showSnackBar(context);
  }

  login() async {
    if (frm.currentState!.validate()) {
      Crud crud = Crud();
      state = "Loading";
      update(); // *****
      var res = await crud.postData(loginLink,
          {"email": email.text.trim(), "password": password.text.trim()});
      if (res is Map) {
        if (res["isOk"] == false) {
          state = "Fail";
          update(); // ****** 
          var message = res["resBody"]["message"];
          // show snack bar with message error
        } else {
          res = res["resBody"]; // set the resbody in the res
          myServices.user_id = res["data"]["id"];
          myServices.user_id = res["data"]["username"];
          myServices.user_id = res["data"]["email"];
          myServices.user_image = res["data"]["image"];
          // shared prefrences
          myServices.sh.setString("token", res["jwt"]);
          myServices.sh.setBool("isLogin", true);
          // *****
          Get.offAll(() => const HomePage());
        }
      } else if (res == HttpStatus().internet_Failure) {
        state = "Internet";
        update(); // ***
      } else {
        state = "Server";
        update(); // ***
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

//   login() async {
//     if (frm.currentState!.validate()) {
//       Crud crud = Crud();
//       state = "Loading";
//       update(); // **
//       var 
//       var res = await crud.postData(loginLink, {
//         "email": email.text.trim(),
//         "password": password.text.trim()
//       });
//       // state = statusCheck(res);
//       // update(); // ***

//       if(res is Map){
//          if( res["message"] == "success" ){

//          }
//       }
//       if (state is Map) {
//         user_id = res["data"]["id"];
//         user_id = res["data"]["username"];
//         user_id = res["data"]["email"];
//         user_image = res["data"]["image"];
//         Get.offAll(() => const HomePage());
//       }
//     }
//   }

//   goToRegister() {
//     Get.to(() => const RegisterPage());
//   }

//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }
// }

// login(BuildContext context) async {
  //   print(213);
  //   if (frm.currentState!.validate()) {
  //     print(00);
  //     state = "Loading";
  //     update(); // ***
  //     if (await checkInternet()) {
  //       print(11); ////////////////////////////////////////////////
  //       var res = await http.post(Uri.parse(loginLink), body: {
  //         "email": email.text.trim(),
  //         "password": password.text.trim()
  //       });
  //       if (res.statusCode == HttpStatus().ok) {
  //       print(222); ////////////////////////////////////////////////
  //         Map responseBody = jsonDecode(res.body);
  //         user_id = responseBody["data"]["id"];
  //         user_id = responseBody["data"]["username"];
  //         user_id = responseBody["data"]["email"];
  //         user_image = responseBody["data"]["image"];
  //         Get.offAll(() => const HomePage());
  //       } else if (res.statusCode == HttpStatus().bad_request) {
  //       print(333); ////////////////////////////////////////////////
  
  //         Map responseBody = jsonDecode(res.body);
  //         print("error");
  //       } else {
  //         state = "Internet";
  //         update(); // ***
  //       }
  //     }
  //   }
  // }
