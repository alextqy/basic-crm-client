// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import 'package:app/model/result_model.dart';
import 'package:app/model/result_list_model.dart';

class BaseApi {
  Utf8Decoder decoder = const Utf8Decoder();
  // String url = FileHelper().jsonRead(key: 'server_address');
  int timeout = 10;

  // String token = '';
  // header('sAccess-Control-Allow-Origin:*');
  // header('Access-Control-Allow-Methods:POST');
  // header('Access-Control-Allow-Headers:x-requested-with, content-type');
  // header('Content-type:text/json');
  Map<String, String> postHeaders = {
    'Accept': 'application/json',
    // 'Content-Type': 'application/x-www-form-urlencoded',
    // 'Access-Control-Allow-Origin': '*',
    // 'Access-Control-Allow-Headers': 'x-requested-with, content-type',
  };
  Encoding? postEncoding = Encoding.getByName('utf-8');

  DeJson(Response response) {
    return ResultModel.fromJson(jsonDecode(decoder.convert(response.bodyBytes)));
  }

  DeJsonList(Response response) {
    return ResultListModel.fromJson(jsonDecode(decoder.convert(response.bodyBytes)));
  }
}
