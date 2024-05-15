// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/common/File.dart';

class LangHelper {
  String LangType = '';
  String Title = '';
  String Admin = '';
  String Manager = '';
  String AfterService = '';
  String Loading = '';
  String Complete = '';

  LangHelper() {
    LangType = FileHelper().JsonRead(Key: 'lang');
    Title = FileHelper().JsonRead(Key: 'title');

    if (LangType == 'en') {
      Admin = 'Admin';
      Manager = 'Manager';
      AfterService = 'After Service';
      Loading = 'Loading';
      Complete = 'Complete';
    }
    if (LangType == 'cn') {
      Admin = '管理员';
      Manager = '销售经理';
      AfterService = '售后';
      Loading = '加载中';
      Complete = '完成';
    }
  }
}
