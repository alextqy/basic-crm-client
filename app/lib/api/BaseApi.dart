// ignore_for_file: file_names, non_constant_identifier_names

import "dart:convert";

class BaseApi {
  Utf8Decoder Decoder = const Utf8Decoder();
  // String url = FileHelper().jsonRead(key: "server_address");
  int Timeout = 10;

  // String token = "";
  // header("sAccess-Control-Allow-Origin:*");
  // header("Access-Control-Allow-Methods:POST");
  // header("Access-Control-Allow-Headers:x-requested-with, content-type");
  // header("Content-type:text/json");
  Map<String, String> PostHeaders = {
    "Accept": "application/json",
    // "Content-Type": "application/x-www-form-urlencoded",
    // "Access-Control-Allow-Origin": "*",
    // "Access-Control-Allow-Headers": "x-requested-with, content-type",
  };
  Encoding? PostEncoding = Encoding.getByName("utf-8");
}
