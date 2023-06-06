// ignore_for_file: file_names

import 'package:api_test/Core/Classes/Http_Status_Code.dart';

statusCheck(var response) {
  if (response is Map) {
    return "Success";
  } else if (response == HttpStatus().internet_Failure) {
    return "Internet";
  } else {
    return "Server";
  }
}

// statusCheck(var response) {
//   if (response is Map) {
//     if (data["state"] == "success") {
//       return "Success";
//     } else {
//       return "Fail";
//     }
//   }else if(data == "Server" || data == "Internet") {
//       return data;
//   }
//   return "Fail";
// }
