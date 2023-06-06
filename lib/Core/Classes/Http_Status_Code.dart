// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'dart:convert';

class HttpStatus {
   final  ok = 200  ;
   final created = 201;
   final no_content = 204;
   final not_modified = 304;
   final bad_request = 400;
   final unauthoriezed = 401;
   final forbidden = 403;
   final not_found = 404;
   final conflect = 409;
   final internal_server_error = 500;

   // internet
   final internet_Failure = 1000;
}

// class Requesthanlder {
//   bool isOk(int status) {
//     return (status == 200 || status == 201);
//   }

//   Map body(rbody) {
//     return jsonDecode(rbody);
//   }

//   string errMessage(body) {
//     return jsonDecode(body)["message"];
//   }
// }