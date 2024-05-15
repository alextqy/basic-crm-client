// ignore_for_file: non_constant_identifier_names, file_names, library_prefixes

import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:app/common/File.dart';
import 'package:crypto/crypto.dart' as Crypto;
import 'package:flutter/material.dart';

class ToolsHelper {
  // 当前时间戳
  int Timestamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  // 时间戳转时间
  String TimestampToStr(int Timestamp) {
    if (Timestamp == 0) return '';
    if (Timestamp.toString().length == 10) {
      Timestamp *= 1000;
    }
    return DateTime.fromMillisecondsSinceEpoch(Timestamp).toLocal().toString().substring(0, 19);
  }

  // 时间转时间戳 1970-01-01 00:00:00.00000
  int StrToTimestamp(String TimeStr) {
    return DateTime.parse(TimeStr).millisecondsSinceEpoch;
  }

  // 字符串md5
  String MD5(String Content) {
    Uint8List Data = const Utf8Encoder().convert(Content);
    Crypto.Hash Md5 = Crypto.md5;
    Crypto.Digest Digest = Md5.convert(Data);
    return Digest.toString();
  }

  // 字符串转二进制
  Uint8List EncodeBytes(String S) {
    List<int> EncodedString = utf8.encode(S);
    int EncodedLength = EncodedString.length;
    ByteData Data = ByteData(EncodedLength + 4);
    Data.setUint32(0, EncodedLength, Endian.big);
    Uint8List Bytes = Data.buffer.asUint8List();
    Bytes.setRange(4, EncodedLength + 4, EncodedString);
    return Bytes;
  }

  // 二进制转字符串
  String DecodeBytes(Uint8List S) {
    return utf8.decode(S);
  }

  // 字符串格式化utf8
  String EncodeUtf8(String S) {
    Utf8Decoder Decoder = const Utf8Decoder();
    return Decoder.convert(EncodeBytes(S));
  }

  // 字符串转base64
  String EncodeBase64(String S) {
    return base64Encode(utf8.encode(S));
  }

  // base64转字符串
  String DecodeBase64(String S) {
    return String.fromCharCodes(base64Decode(S));
  }

  // 字符串转二进制数组
  List<int> EncodeByteList(List<dynamic> Data) {
    List<int> DataBit = [];
    for (dynamic Element in Data) {
      DataBit.add(Element as int);
    }
    return DataBit;
  }

  // 二进制数组转二进制
  Uint8List ByteListToBytes(List<int> Data) {
    return Uint8List.fromList(Data);
  }

  // 字符串指定位置插入指定符号
  String StringInsertion(String Str, int Offs, String Ins) {
    String Start = Str.substring(0, Offs);
    Start += Ins;
    String End = Str.substring(Offs, Str.length);
    return Start + End;
  }

  // UDP 客户端
  Future<String> ClentUDP(int Port) async {
    RawDatagramSocket RawDgramSocket = await RawDatagramSocket.bind('0.0.0.0', Port);
    // rawDgramSocket.send(utf8.encode('hello,world!'), InternetAddress('0.0.0.0'), port);
    await for (RawSocketEvent Event in RawDgramSocket) {
      if (Event == RawSocketEvent.read) {
        return utf8.decode(RawDgramSocket.receive()!.data);
      }
    }
    return '';
  }

  // 接口监听
  Future<void> SocketListen(BuildContext Context, int Port, int S) async {
    Duration TimeoutDuration = Duration(milliseconds: S * 1000);
    RawDatagramSocket RawDgramSocket = await RawDatagramSocket.bind('0.0.0.0', Port);
    RawDgramSocket.timeout(TimeoutDuration, onTimeout: ((sink) {
      RawDgramSocket.close();
    })).listen((event) async {
      if (event == RawSocketEvent.read) {
        var b = !FileHelper().JsonWrite(Key: 'server_address', Value: utf8.decode(RawDgramSocket.receive()!.data));
        RawDgramSocket.close();
      }
    });
  }

  // UDP 服务端 (待测)
  // void serverUDP() async {
  //   RawDatagramSocket rawDgramSocket = await RawDatagramSocket.bind(InternetAddress.loopbackIPv4, 8081);
  //   await for (RawSocketEvent event in rawDgramSocket) {
  //     if (event == RawSocketEvent.read) {
  //       // print(utf8.decode(rawDgramSocket.receive()!.data));
  //       rawDgramSocket.send(utf8.encode('UDP Server:already received!'), InternetAddress.loopbackIPv4, 8082);
  //     }
  //   }
  // }
}
