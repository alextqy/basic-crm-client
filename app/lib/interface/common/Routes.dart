// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/interface/AdminListPage.dart';
import 'package:flutter/material.dart';
import 'package:app/common/Lang.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/IndexPage.dart';

class Routes {
  dynamic Generate(BuildContext Context, String RouteName, {dynamic Data}) {
    switch (RouteName) {
      case '/':
        return MaterialPageRoute(builder: (Context) => const IndexPage());
      case '/admin/list':
        return MaterialPageRoute(builder: (context) => const AdminListPage());
      default:
        return MaterialPageRoute(
          builder: (Context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: ToolbarHeight,
              backgroundColor: MainColor,
              title: Text(LangHelper().Error, style: TxStyle(FontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            body: Center(child: Text(LangHelper().Error, style: TxStyle(FontSize: 30), maxLines: 1, overflow: TextOverflow.ellipsis)),
          ),
        );
    }
  }
}
