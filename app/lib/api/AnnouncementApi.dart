// ignore_for_file: non_constant_identifier_names, file_names

import 'package:http/http.dart';
import 'package:app/api/BaseApi.dart';
import 'package:app/common/File.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';

class AnnouncementApi extends BaseApi {
  Future<ResultModel> AnnouncementNew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/announcement/new'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Title': Title.toString(),
        'Content': Content.toString(),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultListModel> AnnouncementList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/announcement/list'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Page': Page.toString(),
        'PageSize': PageSize.toString(),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'AuthorID': AuthorID.toString(),
        'Display': Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AnnouncementAll({
    required URL,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/announcement/all'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'Order': Order.toString(),
        'Stext': Stext.toString(),
        'AuthorID': AuthorID.toString(),
        'Display': Display.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AnnouncementData({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/announcement/data'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AnnouncementDel({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/announcement/del'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }

  Future<ResultModel> AnnouncementDisplay({
    required URL,
    required ID,
  }) async {
    Response Resp = await post(
      Uri.http(URL, '/announcement/display'),
      body: {
        'Token': FileHelper().JsonRead(Key: 'token'),
        'ID': ID.toString(),
      },
      headers: PostHeaders,
      encoding: PostEncoding,
    ).timeout(Duration(seconds: Timeout));
    return DeJson(Resp);
  }
}
