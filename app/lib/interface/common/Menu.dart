// ignore_for_file: non_constant_identifier_names, must_be_immutable

import "package:flutter/material.dart";
import "package:app/common/File.dart";
import "package:app/interface/common/PubLib.dart";
import "package:app/interface/common/Routes.dart";

Drawer ActionMenu(BuildContext context) {
  // bool Master = bool.parse(FileHelper().JsonRead(key: "master"));

  dynamic MenuHeader(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: DrawerHeader(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        // decoration: const BoxDecoration(color: Colors.black12),
        child: Column(
          children: [
            const Expanded(child: SizedBox.shrink()),
            SizedBox(
              height: 58,
              width: 58,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: CircleAvatar(
                  backgroundColor: Colors.white70,
                  child: SizedBox(
                    height: 53,
                    width: 53,
                    child: CircleAvatar(
                      backgroundColor: BgColor(context),
                      child: Text(FileHelper().JsonRead(key: "account").substring(0, 2), style: TxStyle(fontSize: 24), maxLines: 1, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                onTap: () async {
                  Navigator.of(context).push(Routes().generate(context, "/personal/settings"));
                },
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
          ],
        ),
      ),
    );
  }

  dynamic MenuFooter(BuildContext context) {
    return Tooltip(
      message: "out",
      textStyle: TxStyle(),
      decoration: TooltipStyle(),
      child: SizedBox(
        height: 35,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0))),
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              return BgColor(context);
            }),
          ),
          child: Row(
            children: [
              const Expanded(child: SizedBox.shrink()),
              Text("exit", style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(width: 10),
              Icon(Icons.exit_to_app, size: IconSize, color: IconColor),
            ],
          ),
          onLongPress: () async {
            FileHelper().JsonWrite(key: "account", value: "");
            // userNotifier.signOut(url: appUrl).then((value) {
            //   if (value.state == true) {
            //     if (FileHelper().delFile("token")) {
            //       exit(0);
            //     }
            //   } else {
            //     showSnackBar(context, content: value.message, backgroundColor: bgColor(context));
            //   }
            // });
          },
          onPressed: () async {
            FileHelper().JsonWrite(key: "account", value: "");
            // userNotifier.signOut(url: appUrl).then((value) {
            //   if (value.state == true) {
            //     if (FileHelper().delFile("token")) {
            //       Navigator.pushAndRemoveUntil(
            //         context,
            //         MaterialPageRoute(builder: (context) => IndexPage(title: appTitle)),
            //         (route) => false,
            //       );
            //     }
            //   } else {
            //     showSnackBar(context, content: value.message, backgroundColor: bgColor(context));
            //   }
            // });
          },
        ),
      ),
    );
  }

  return Drawer(
    width: ScreenSize(context).width > 800 ? ScreenSize(context).width * 0.2 : ScreenSize(context).width * 0.45,
    backgroundColor: Colors.black54,
    child: Column(
      children: [
        MenuHeader(context),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.home, size: IconSize, color: IconColor),
                title: Text("home", style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () async {
                  Navigator.of(context).push(Routes().generate(context, "/"));
                },
              ),
              ListTile(
                horizontalTitleGap: 20,
                leading: Icon(Icons.cloud_upload, size: IconSize, color: IconColor),
                title: Text("upload", style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
                onTap: () async {
                  Navigator.of(context).push(Routes().generate(context, "/uploading"));
                },
              ),
            ],
          ),
        ),
        ListTile(horizontalTitleGap: 10, title: Text("v 0.1.0", style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis)),
        MenuFooter(context),
      ],
    ),
  );
}