// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/IndexPage.dart';

class Routes {
  dynamic Generate(BuildContext Context, String RouteName, {dynamic Data}) {
    switch (RouteName) {
      case '/':
        return MaterialPageRoute(builder: (Context) => const IndexPage());
      // case '/uploading':
      //   return MaterialPageRoute(builder: (context) => const UploadPage());
      default:
        return MaterialPageRoute(
          builder: (Context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: ToolbarHeight,
              backgroundColor: MainColor,
              title: Text(Lang.Error, style: TxStyle(FontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            body: Center(child: Text(Lang.Error, style: TxStyle(FontSize: 30), maxLines: 1, overflow: TextOverflow.ellipsis)),
          ),
        );
    }
  }
}
