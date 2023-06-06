// ignore_for_file: file_names
import 'package:api_test/Core/Classes/Http_Status_Code.dart';
import 'package:api_test/Core/Functions/CheckInternet.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// class Crud {
//    postData(String linkurl, Map data) async {
//      // internet test
//       try {
//         if (await checkInternet()) {
//         var response = await http.post(Uri.parse(linkurl), body: data);
//         // test if the page exist
//         if (response.statusCode == 200 || response.statusCode == 201) {
//           Map responsebody = jsonDecode(response.body);
//           return responsebody;
//         } else {
//           return "Server";
//         }
//       } else {
//         return "Internet";
//       }

//       } catch (e) {
//         return "TryCatchError *** ${e.toString()}";
//       }

//   }
// }

class Crud {
  postData(String linkurl, Map data) async {
    // internet test
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        // test if the page exist
        if (response.statusCode == HttpStatus().ok) {
          Map responsebody = jsonDecode(response.body);
          return {"isOk": true, "resBody": responsebody};
        } else if (response.statusCode >= 400 && response.statusCode < 500) {
          Map responsebody = jsonDecode(response.body);
          return {"isOk": false, "resBody": responsebody};
          // } else if (response.statusCode == HttpStatus().internal_server_error) {
          //   return HttpStatus().internal_server_error;
        } else {
          return response.statusCode;
        }
      } else {
        return HttpStatus().internet_Failure;
      }
    } catch (e) {
      return "TryCatchError *** ${e.toString()}";
    }

    // http://localhost:3000/api/v1/register/signin
    // http://localhost:3000/api/v1/register/signup
    // http://localhost:3000/api/v1/register/me //JWT
    // http://localhost:3000/api/v1/csrf/generate

    // npx yarn dev
  }
}
