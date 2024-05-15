// ignore_for_file: non_constant_identifier_names, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:app/interface/common/PubLib.dart';

class Routes {
  dynamic Generate(BuildContext Context, String RouteName, {dynamic Data}) {
    switch (RouteName) {
      // case '/':
      //   return MaterialPageRoute(builder: (context) => const HomePage());
      // case '/uploading':
      //   return MaterialPageRoute(builder: (context) => const UploadPage());
      default:
        return MaterialPageRoute(
          builder: (Context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: ToolbarHeight,
              backgroundColor: BgColor(Context),
              title: Text('Error', style: TxStyle(FontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            body: Center(child: Text('ERROR', style: TxStyle(FontSize: 30), maxLines: 1, overflow: TextOverflow.ellipsis)),
          ),
        );
    }
  }
}
