// ignore_for_file: non_constant_identifier_names, must_be_immutable

import "package:flutter/material.dart";
import "package:app/interface/common/PubLib.dart";

class Routes {
  dynamic generate(BuildContext context, String routeName, {dynamic data}) {
    switch (routeName) {
      // case "/":
      //   return MaterialPageRoute(builder: (context) => const HomePage());
      // case "/uploading":
      //   return MaterialPageRoute(builder: (context) => const UploadPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: ToolbarHeight,
              backgroundColor: BgColor(context),
              title: Text("Error", style: TxStyle(fontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            body: Center(child: Text("ERROR", style: TxStyle(fontSize: 30), maxLines: 1, overflow: TextOverflow.ellipsis)),
          ),
        );
    }
  }
}
