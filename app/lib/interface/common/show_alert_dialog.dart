// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:app/interface/common/pub_lib.dart';

// 提示框
ShowAlertDialog(BuildContext context, {String Memo = ''}) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, Function State) {
          return AlertDialog(
            title: Text('title', style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            content: Text(Memo, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                child: Text('cancel', style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ],
          );
        },
      );
    },
  );
}

// 控件框
ShowAlertWidget(BuildContext context, Widget Child) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return UnconstrainedBox(
        constrainedAxis: Axis.vertical, // 取消原有宽高限制
        child: StatefulBuilder(
          builder: (BuildContext context, Function State) {
            return Dialog(
              child: Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                child: Child,
              ),
            );
          },
        ),
      );
    },
  );
}

ScaffoldFeatureController ShowSnackBar(
  BuildContext context, {
  String Content = '',
  Color BackgroundColor = Colors.black,
  int Durn = 2,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: Durn),
      backgroundColor: BackgroundColor,
      padding: const EdgeInsets.all(10),
      content: Text(Content, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      // action: SnackBarAction(label: 'Action', onPressed: () async {}),
    ),
  );
}
