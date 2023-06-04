// ignore_for_file: file_names

import 'package:api_test/Controller/AddNoteController.dart';
import 'package:api_test/Core/constant/colors.dart';
import 'package:api_test/View/Ashared/CustumForm.dart';
import 'package:api_test/View/Ashared/CustumText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    AddNoteController controller = Get.put(AddNoteController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            const CustumForm(
              content: "Title",
              autofocus: true,
            ),
            const SizedBox(height: 30),
            const CustumForm(content: "Content", maxLines: 20),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                controller.addNote();
              },
              height: 50,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: AppColor.primaryColor,
              child: const CustumText(
                  text: "Add Note",
                  size: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
