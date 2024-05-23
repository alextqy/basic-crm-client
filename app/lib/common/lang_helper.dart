import 'package:app/common/file_helper.dart';

class LangHelper {
  String langType = '';
  String title = '';
  String admin = '';
  String manager = '';
  String afterService = '';
  String loading = '';
  String complete = '';
  String account = '';
  String password = '';
  String network = '';
  String login = '';
  String error = '';
  String exit = '';
  String home = '';

  LangHelper() {
    langType = FileHelper().jsonRead(key: 'lang');
    title = FileHelper().jsonRead(key: 'title');

    if (langType == 'en') {
      admin = 'Admin';
      manager = 'Manager';
      afterService = 'After Service';
      loading = 'Loading';
      complete = 'Complete';
      account = 'Account';
      password = 'Password';
      network = 'Network';
      login = 'Log in';
      error = 'Error';
      exit = 'Exit';
      home = 'Home';
      admin = 'Admin';
    }
    if (langType == 'cn') {
      admin = '管理员';
      manager = '销售经理';
      afterService = '售后';
      loading = '加载中';
      complete = '完成';
      account = '账号';
      password = '密码';
      network = '网络';
      login = '登录';
      error = '错误';
      exit = '退出';
      home = '首页';
      admin = '管理员';
    }
  }
}
