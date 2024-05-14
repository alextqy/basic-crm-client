// ignore_for_file: non_constant_identifier_names

import 'package:app/common/File.dart';

class LangHelper {
  String LangType = '';
  String Title = '';
  String Admin = '';
  String Manager = '';
  String AfterService = '';

  LangHelper() {
    LangType = FileHelper().JsonRead(key: 'lang');
    Title = FileHelper().JsonRead(key: 'title');

    if (LangType == 'en') {
      Admin = 'Admin';
      Manager = 'Manager';
      AfterService = 'After Service';
    }
    if (LangType == 'cn') {
      Admin = '管理员';
      Manager = '销售经理';
      AfterService = '售后';
    }
  }
}
