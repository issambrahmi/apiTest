// ignore_for_file: file_names

import 'package:flutter/material.dart';

showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content:  Container(
        height: 800,
        color: Colors.transparent,
      margin: EdgeInsets.only(bottom: 780),
      child: Text("HII" , style: TextStyle(fontSize: 30),),
    )
    )
  );
}
