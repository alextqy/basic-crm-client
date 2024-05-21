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
  String Account = '';
  String Password = '';
  String Network = '';
  String Login = '';
  String Error = '';
  String Exit = '';
  String Home = '';

  LangHelper() {
    LangType = FileHelper().JsonRead(Key: 'lang');
    Title = FileHelper().JsonRead(Key: 'title');

    if (LangType == 'en') {
      Admin = 'Admin';
      Manager = 'Manager';
      AfterService = 'After Service';
      Loading = 'Loading';
      Complete = 'Complete';
      Account = 'Account';
      Password = 'Password';
      Network = 'Network';
      Login = 'Log in';
      Error = 'Error';
      Exit = 'Exit';
      Home = 'Home';
      Admin = 'Admin';
    }
    if (LangType == 'cn') {
      Admin = '管理员';
      Manager = '销售经理';
      AfterService = '售后';
      Loading = '加载中';
      Complete = '完成';
      Account = '账号';
      Password = '密码';
      Network = '网络';
      Login = '登录';
      Error = '错误';
      Exit = '退出';
      Home = '首页';
      Admin = '管理员';
    }
  }
}
