import 'package:app/interface/common/show_alert_dialog.dart';
import 'package:app/interface/common/menu.dart';
import 'package:app/interface/common/pub_lib.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/common/lang_helper.dart';
import 'package:app/notifier/admin_notifier.dart';
import 'package:flutter/material.dart';

class AdminListPage extends StatefulWidget {
  const AdminListPage({super.key});

  @override
  State<AdminListPage> createState() => _AdminListPage();
}

class _AdminListPage extends State<AdminListPage> {
  final AdminNotifier adminNotifier = AdminNotifier();

  void fetchData() {
    adminNotifier.AdminList(
      URL: FileHelper().jsonRead(key: 'server'),
      Page: Page,
      PageSize: 10,
      Order: -1,
      Stext: "",
      Level: 0,
      Status: 0,
    ).then((value) {
      // setState(() {
      // var data = AdminModel().fromJsonList(jsonEncode(value.Data));
      // });
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AadminListener() async {
      ShowSnackBar(context, Content: LangHelper().loading, BackgroundColor: mainColor, Durn: 1);
      if (adminNotifier.operationStatus == true) {
        ShowSnackBar(context, Content: LangHelper().complete, BackgroundColor: mainColor);
      } else {
        ShowSnackBar(context, Content: adminNotifier.operationMemo, BackgroundColor: mainColor);
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: mainColor,
        title: Text(LangHelper().admin, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      endDrawer: ActionMenu(context),
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
