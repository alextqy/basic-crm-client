// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:app/notifier/admin_notifier.dart';
import 'package:app/main.dart';
import 'package:app/interface/common/show_alert_dialog.dart';
import 'package:app/common/lang_helper.dart';
import 'package:app/common/file_helper.dart';
import 'package:app/interface/common/pub_lib.dart';
import 'package:app/interface/common/routes.dart';
import 'package:flutter/material.dart';

Drawer ActionMenu(BuildContext context) {
  final AdminNotifier adminNotifier = AdminNotifier();

  dynamic MenuHeader(BuildContext context) {
    return Container(
      color: mainColor,
      height: 50,
      width: double.infinity,
      child: DrawerHeader(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: InkWell(
          child: Row(
            children: [
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  FileHelper().jsonRead(key: 'account').toUpperCase(),
                  style: textStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget MenuFooter(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              height: 35,
              color: mainColor,
              child: Text(LangHelper().exit, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
      onLongPress: () {
        adminNotifier.AdminSignOut(URL: FileHelper().jsonRead(key: 'server')).then((value) {
          if (value.State) {
            FileHelper().jsonWrite(key: 'token', value: '');
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const StartPage()), (route) => false);
          }
        });
      },
      onTap: () {
        adminNotifier.AdminSignOut(URL: FileHelper().jsonRead(key: 'server')).then((value) {
          if (value.State) {
            FileHelper().jsonWrite(key: 'token', value: '');
            exit(0);
          } else {
            ShowSnackBar(context, Content: value.Message, BackgroundColor: mainColor);
          }
        });
      },
    );
  }

  return Drawer(
    width: screenSize(context).width > 800 ? screenSize(context).width * 0.2 : screenSize(context).width * 0.45,
    backgroundColor: Colors.transparent,
    child: Column(
      children: [
        MenuHeader(context),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.home, size: iconSize, color: widgetColor),
                title: Text(LangHelper().home, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.of(context).push(Routes().Generate(context, '/'));
                },
              ),
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.admin_panel_settings, size: iconSize, color: widgetColor),
                title: Text(LangHelper().admin, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.of(context).push(Routes().Generate(context, '/admin/list'));
                },
              ),
            ],
          ),
        ),
        MenuFooter(context),
      ],
    ),
  );
}
