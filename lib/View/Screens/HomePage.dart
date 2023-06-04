// ignore_for_file: file_names
import 'package:api_test/Controller/HomeController.dart';
import 'package:api_test/Core/constant/colors.dart';
import 'package:api_test/View/Ashared/CustumForm.dart';
import 'package:api_test/View/Widgets/NoteCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
          onPressed: () => controller.addNote(),
          backgroundColor: AppColor.primaryColor,
          child: const Icon(Icons.add)),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.amber),
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: CustumForm(
                  content: "Searche for your notes",
                  mycontroller: controller.search,
                  icon: const Icon(Icons.search),
                ))
              ],
            ),
            const SizedBox(height: 35),
            Flexible(
              child: ListView.builder(
                // shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const NoteCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
