// ignore_for_file: file_names
import 'package:api_test/Core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustumForm extends StatelessWidget {
  final TextEditingController? mycontroller;
  final String? title;
  final String content;
  final Widget? icon;
  final bool? autofocus;
  final TextInputType? keyboardtype ;
  final int? maxLines;

  final String? Function(String?)? myValidator;
  const CustumForm(
      {super.key,
      this.mycontroller,
      this.title,
      required this.content,
      this.myValidator,
      this.autofocus,
      this.keyboardtype,
      this.maxLines,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus ?? false,
      keyboardType: keyboardtype,
      maxLines: maxLines,
      controller: mycontroller,
      validator: myValidator,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: AppColor.primaryColor, width: 2.2)),
          errorStyle: const TextStyle(height: 1, fontSize: 12),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: title != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(title!,
                      style: TextStyle(fontSize: 20, color: Colors.grey[800])))
              : null,
          contentPadding: const EdgeInsetsDirectional.symmetric(
              horizontal: 30, vertical: 20),
          hintText: content,
          suffixIcon: icon,
          suffixIconColor: Colors.grey[800]),
    );
  }
}
