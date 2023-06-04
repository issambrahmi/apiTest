 // ignore_for_file: file_names
 import 'package:get/get.dart';

inputValidator(String text , String type , int max , int min){
   
   if(text == "") return "the $type cant be empty";
   if(type == "Email") {
    if(!GetUtils.isEmail(text)) return "Enter a valide email";
   }
   if(text.trim().length > max) "the $type should contain $max caracters max";
   if(text.trim().length < min) "the $type should contain $min caracters min";
 }