// ignore_for_file: file_names

import 'dart:io';

import 'package:get/get.dart';

checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
    return false;
  }on SocketException catch (_) {
    _.printError();
  }
}