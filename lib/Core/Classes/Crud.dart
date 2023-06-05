// ignore_for_file: file_names
import 'package:api_test/Core/Functions/CheckInternet.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Crud {
   postData(String linkurl, Map data) async {
     // internet test
      try {  
        if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        // test if the page exist
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return responsebody;
        } else {
          return "Server";
        }
      } else {
        return "Internet";
      }
        
      } catch (e) {
        return "TryCatchError *** ${e.toString()}";
      }
     
  }
}