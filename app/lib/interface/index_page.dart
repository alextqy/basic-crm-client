import 'package:app/interface/common/pub_lib.dart';
import 'package:app/interface/common/menu.dart';
import 'package:app/common/lang_helper.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPage();
}

class _IndexPage extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: mainColor,
        title: Text(LangHelper().title, style: textStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      endDrawer: ActionMenu(context),
      body: const Center(),
    );
  }
}
