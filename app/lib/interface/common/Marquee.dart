// ignore_for_file: non_constant_identifier_names, file_names, must_be_immutable, avoid_types_as_parameter_names, avoid_renaming_method_parameters

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app/interface/common/PubLib.dart';
import 'package:app/interface/common/Routes.dart';

class Marquee extends StatefulWidget {
  late List<String> Data;
  late String URL;
  late int Interval; // 停留时间
  late int SwitchingSpeed; // 切换速度

  Marquee({required this.Data, this.URL = '', this.Interval = 3, this.SwitchingSpeed = 1, super.key});

  @override
  MarqueeState createState() => MarqueeState();
}

class MarqueeState extends State<Marquee> {
  late PageController Controller;
  late Timer T;

  buildPageViewItemWidget(int Index) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(widget.Data[Index], style: TxStyle(), maxLines: 1, overflow: TextOverflow.ellipsis),
        onTap: () async {
          Navigator.of(context).push(Routes().Generate(context, widget.URL, Data: widget.Data[Index]));
        },
      ),
    );
  }

  @override
  void initState() {
    Controller = PageController();

    T = Timer.periodic(Duration(seconds: widget.Interval), (Timer) {
      if (Controller.page!.round() >= widget.Data.length) {
        Controller.jumpToPage(0);
      }
      Controller.nextPage(duration: Duration(seconds: widget.SwitchingSpeed), curve: Curves.linear);
    });
    super.initState();
  }

  @override
  void dispose() {
    T.cancel();
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext Context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: Controller,
      itemBuilder: (BuildContext, Index) {
        if (widget.Data.isNotEmpty && Index < widget.Data.length) {
          return buildPageViewItemWidget(Index);
        } else {
          return buildPageViewItemWidget(0);
        }
      },
      itemCount: widget.Data.isNotEmpty ? widget.Data.length + 1 : 0,
    );
  }
}
