import 'package:app/interface/common/show_alert_dialog.dart';
import 'package:app/interface/index_page.dart';
import 'package:app/interface/common/pub_lib.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/common/tools_helper.dart';
import 'package:app/common/lang_helper.dart';
import 'package:app/notifier/manager_notifier.dart';
import 'package:app/notifier/after_service_notifier.dart';
import 'package:app/notifier/admin_notifier.dart';
import 'package:app/model/admin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.transparent,
          brightness: Brightness.dark,
          background: Colors.black,
        ),
        textTheme: TextTheme(
          titleLarge: textStyle(),
          displayLarge: textStyle(),
        ),
      ),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  int segmentedControlValue = 0;

  Widget segmentedControl() {
    return SizedBox(
      width: 350,
      child: CupertinoSlidingSegmentedControl(
        groupValue: segmentedControlValue,
        thumbColor: mainColor,
        children: <int, Widget>{
          0: Container(padding: const EdgeInsets.all(6), child: Text(LangHelper().admin, style: textStyle(fontSize: 13))),
          1: Container(padding: const EdgeInsets.all(6), child: Text(LangHelper().manager, style: textStyle(fontSize: 13))),
          2: Container(padding: const EdgeInsets.all(6), child: Text(LangHelper().afterService, style: textStyle(fontSize: 13))),
        },
        onValueChanged: (value) {
          setState(() {
            segmentedControlValue = value!;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AdminNotifier adminNotifier = AdminNotifier();
    final ManagerNotifier managerNotifier = ManagerNotifier();
    final AfterServiceNotifier afterServiceNotifier = AfterServiceNotifier();
    TextEditingController accountController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController networkController = TextEditingController();

    accountController.text = FileHelper().jsonRead(key: 'account');
    networkController.text = FileHelper().jsonRead(key: 'server');

    AdminListener() async {
      ShowSnackBar(context, Content: LangHelper().loading, BackgroundColor: mainColor, Durn: 1);
      if (adminNotifier.operationStatus == true) {
        ShowSnackBar(context, Content: LangHelper().complete, BackgroundColor: mainColor);
      } else {
        ShowSnackBar(context, Content: adminNotifier.operationMemo, BackgroundColor: mainColor);
      }
    }

    ManagerListener() async {
      ShowSnackBar(context, Content: LangHelper().loading, BackgroundColor: mainColor, Durn: 1);
      if (managerNotifier.operationStatus == true) {
        ShowSnackBar(context, Content: LangHelper().complete, BackgroundColor: mainColor);
      } else {
        ShowSnackBar(context, Content: managerNotifier.operationMemo, BackgroundColor: mainColor);
      }
    }

    AfterServiceListener() async {
      ShowSnackBar(context, Content: LangHelper().loading, BackgroundColor: mainColor, Durn: 1);
      if (afterServiceNotifier.operationStatus == true) {
        ShowSnackBar(context, Content: LangHelper().complete, BackgroundColor: mainColor);
      } else {
        ShowSnackBar(context, Content: afterServiceNotifier.operationMemo, BackgroundColor: mainColor);
      }
    }

    setConf();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 350,
              padding: const EdgeInsets.all(0),
              child: TextField(
                controller: accountController,
                cursorColor: borderColor,
                style: textStyle(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(borderCircular)),
                    borderSide: BorderSide(color: mainColor, width: borderWidth),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(borderCircular)),
                    borderSide: BorderSide(color: borderColor, width: borderWidth),
                  ),
                  labelText: LangHelper().account,
                  labelStyle: textStyle(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: 350,
              padding: const EdgeInsets.all(0),
              child: TextField(
                controller: passwordController,
                cursorColor: borderColor,
                style: textStyle(),
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(borderCircular)),
                    borderSide: BorderSide(color: mainColor, width: borderWidth),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(borderCircular)),
                    borderSide: BorderSide(color: borderColor, width: borderWidth),
                  ),
                  labelText: LangHelper().password,
                  labelStyle: textStyle(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  padding: const EdgeInsets.all(0),
                  child: TextField(
                    controller: networkController,
                    cursorColor: borderColor,
                    style: textStyle(),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(borderCircular)),
                        borderSide: BorderSide(color: mainColor, width: borderWidth),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(borderCircular)),
                        borderSide: BorderSide(color: borderColor, width: borderWidth),
                      ),
                      labelText: LangHelper().network,
                      labelStyle: textStyle(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                setIconButton(
                  icon: Icon(Icons.network_check, size: iconSize, color: widgetColor),
                  function: () {
                    ToolsHelper().clentUDP(int.parse(FileHelper().jsonRead(key: 'broadcast'))).then((value) {
                      if (value.isNotEmpty) {
                        if (FileHelper().jsonWrite(key: 'server', value: value)) {
                          networkController.text = value;
                          ShowSnackBar(context, Content: LangHelper().complete, BackgroundColor: mainColor);
                        }
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            segmentedControl(),
            const SizedBox(height: 15),
            InkWell(
              child: Container(
                height: 35,
                width: 350,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderCircular),
                  color: mainColor,
                ),
                child: Text(LangHelper().login, style: textStyle()),
              ),
              onTap: () {
                if (networkController.text.isNotEmpty) {
                  adminNotifier.AdminSignIn(
                    URL: FileHelper().jsonRead(key: 'server'),
                    Account: accountController.text,
                    Password: passwordController.text,
                  ).then((value) {
                    if (value.State) {
                      AdminModel adminModel = AdminModel.fromJson(value.Data);
                      FileHelper().jsonWrite(key: 'account', value: adminModel.Account);
                      FileHelper().jsonWrite(key: 'token', value: adminModel.Token);
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const IndexPage()), (route) => false);
                    } else {
                      ShowSnackBar(context, Content: value.Message, BackgroundColor: mainColor);
                    }
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
