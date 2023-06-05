// ignore_for_file: file_names
import 'package:api_test/Controller/Auth/RegisterController.dart';
import 'package:api_test/Core/Functions/MyValidator.dart';
import 'package:api_test/Core/constant/colors.dart';
import 'package:api_test/View/Ashared/CustumForm.dart';
import 'package:api_test/View/Ashared/CustumText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: controller.frm,
                child: Column(
                  children: [
                    CustumForm(
                      content: "Please enter your Username",
                      title: "Username",
                      myValidator: (txt) =>
                          inputValidator(txt!, "Username", 50, 10),
                      mycontroller: controller.username,
                      icon: const Icon(Icons.person),
                    ),
                    const SizedBox(height: 20),
                    CustumForm(
                      content: "Please enter your Email",
                      title: "Email",
                      myValidator: (txt) =>
                          inputValidator(txt!, "Email", 50, 10),
                      mycontroller: controller.email,
                      icon: const Icon(Icons.email),
                    ),
                    const SizedBox(height: 20),
                    CustumForm(
                      content: "Please enter your Password",
                      title: "Password",
                      myValidator: (txt) =>
                          inputValidator(txt!, "Password", 50, 8),
                      mycontroller: controller.password,
                      icon: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.remove_red_eye)),
                    ),
                  ],
                )),
            const SizedBox(height: 65),
            MaterialButton(
              onPressed: () {
                controller.register();
              },
              height: 50,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: AppColor.primaryColor,
              child: const CustumText(
                text: "Register",
                size: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
