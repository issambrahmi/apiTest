// ignore_for_file: file_names

statusVal(var data) {
  if (data is Map) {
    if (data["state"] == "success") {
      return "Success";
    } else {
      return "Fail";
    }
  }else if(data == "Server" || data == "Internet") {
      return data;
  }
  return "Fail";
}
