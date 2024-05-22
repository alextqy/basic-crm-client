// ignore_for_file: non_constant_identifier_names, file_names, avoid_renaming_method_parameters, unused_element, no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:app/common/File.dart';
import 'package:app/interface/common/Menu.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/common/Lang.dart';
import 'package:app/interface/common/ShowAlertDialog.dart';
import 'package:app/model/AdminModel.dart';
import 'package:app/notifier/AdminNotifier.dart';
import 'package:flutter/material.dart';

class AdminListPage extends StatefulWidget {
  const AdminListPage({super.key});

  @override
  State<AdminListPage> createState() => _AdminListPage();
}

class _AdminListPage extends State<AdminListPage> {
  final AdminNotifier _AdminNotifier = AdminNotifier();

  void FetchData() {
    _AdminNotifier.AdminList(
      URL: FileHelper().JsonRead(Key: 'server'),
      Page: Page,
      PageSize: 10,
      Order: -1,
      Stext: "",
      Level: 0,
      Status: 0,
    ).then((value) {
      // setState(() {
      var data = AdminModel().FromJsonList(jsonEncode(value.Data));
      print(data);
      // });
    });
  }

  @override
  void initState() {
    FetchData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext Context) {
    AdminListener() async {
      ShowSnackBar(Context, Content: LangHelper().Loading, BackgroundColor: MainColor, Durn: 1);
      if (_AdminNotifier.OperationStatus == true) {
        ShowSnackBar(Context, Content: LangHelper().Complete, BackgroundColor: MainColor);
      } else {
        ShowSnackBar(Context, Content: _AdminNotifier.OperationMemo, BackgroundColor: MainColor);
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: MainColor,
        title: Text(LangHelper().Admin, style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      endDrawer: ActionMenu(Context),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
// FutureBuilder(
//         future: _loadFuture,
//         builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//           if (snapshot.hasError) {
//             return Center(child: Text('发生错误: ${snapshot.error}'));
//           }
//           switch (snapshot.connectionState) {
//             case ConnectionState.waiting:
//               return Container(
//                 child: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               );
//             case ConnectionState.active:
//             case ConnectionState.done:
//               return _ToDoListPageBody(_todoGroupList, todoType);
//             case ConnectionState.none:
//             default:
//               return Center(
//                 child: Text('请求失败'),
//               );
//           }
//         },
//       )

//   //定义future
//   var _loadFuture;
//   @override
//   void initState() {
//     super.initState();
//     _loadFuture = _loadData();
//   }


// Future<dynamic> _loadData() async {
//     ///此处写业务处理逻辑
//     //延迟若干秒
//     await Future.delayed(const Duration(seconds: 1), () {
//       L.i("延迟执行");
//     });

//     return 'ok';
//   }
