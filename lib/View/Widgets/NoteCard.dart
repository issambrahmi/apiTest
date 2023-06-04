// ignore_for_file: file_names

import 'package:api_test/View/Ashared/CustumText.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber),
      child: const Column(
        children: [
             CustumText(
              text: "title",
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 5),
              CustumText(
              text: "this is my note this is my note this is my note this is my note",
              size: 20,
              textAlign: TextAlign.center,
            ),

          
        ],
      ),
    );
  }
}
