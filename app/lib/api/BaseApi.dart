// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/model/ResultModel.dart';

class BaseApi {
  Utf8Decoder Decoder = const Utf8Decoder();
  // String url = FileHelper().jsonRead(key: 'server_address');
  int Timeout = 10;

  // String token = '';
  // header('sAccess-Control-Allow-Origin:*');
  // header('Access-Control-Allow-Methods:POST');
  // header('Access-Control-Allow-Headers:x-requested-with, content-type');
  // header('Content-type:text/json');
  Map<String, String> PostHeaders = {
    'Accept': 'application/json',
    // 'Content-Type': 'application/x-www-form-urlencoded',
    // 'Access-Control-Allow-Origin': '*',
    // 'Access-Control-Allow-Headers': 'x-requested-with, content-type',
  };
  Encoding? PostEncoding = Encoding.getByName('utf-8');

  DeJson(Response Resp) {
    ResultModel.FromJson(jsonDecode(Decoder.convert(Resp.bodyBytes)));
  }
}
