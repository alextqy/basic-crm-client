// ignore_for_file: non_constant_identifier_names, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:app/interface/common/PubLib.dart';

// 提示框
ShowAlertDialog(BuildContext Context, {String Memo = ''}) {
  return showDialog(
    context: Context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext Context, Function State) {
          return AlertDialog(
            title: Text('title', style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            content: Text(Memo, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.pop(Context);
                },
                child: Text('cancel', style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ],
          );
        },
      );
    },
  );
}

// 控件框
ShowAlertWidget(BuildContext Context, Widget Child) {
  return showDialog(
    context: Context,
    barrierDismissible: true,
    builder: (BuildContext Context) {
      return UnconstrainedBox(
        constrainedAxis: Axis.vertical, // 取消原有宽高限制
        child: StatefulBuilder(
          builder: (BuildContext Context, Function State) {
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
  BuildContext Context, {
  String Content = '',
  Color BackgroundColor = Colors.black,
  int Durn = 2,
}) {
  return ScaffoldMessenger.of(Context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: Durn),
      backgroundColor: BackgroundColor,
      padding: const EdgeInsets.all(10),
      content: Text(Content, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      // action: SnackBarAction(label: 'Action', onPressed: () async {}),
    ),
  );
}
