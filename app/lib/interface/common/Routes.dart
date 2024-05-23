// ignore_for_file: non_constant_identifier_names

import 'package:app/interface/admin_list_page.dart';
import 'package:flutter/material.dart';
import 'package:app/common/lang_helper.dart';
import 'package:app/interface/common/pub_lib.dart';
import 'package:app/interface/index_page.dart';

class Routes {
  dynamic Generate(BuildContext context, String routeName, {dynamic data}) {
    switch (routeName) {
      case '/':
        return MaterialPageRoute(builder: (context) => const IndexPage());
      case '/admin/list':
        return MaterialPageRoute(builder: (context) => const AdminListPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: toolbarHeight,
              backgroundColor: mainColor,
              title: Text(LangHelper().error, style: textStyle(fontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            body: Center(child: Text(LangHelper().error, style: textStyle(fontSize: 30), maxLines: 1, overflow: TextOverflow.ellipsis)),
          ),
        );
    }
  }
}
