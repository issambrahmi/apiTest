// ignore_for_file: file_names

statusVal(var data) {
  if (data is Map) {
    if (data["state" == "success"]) {
      return "success";
    } else {
      return "fail";
    }
  }
  return data;
}
