import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:app/common/file_helper.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:flutter/material.dart';

class ToolsHelper {
  // 当前时间戳
  int timestamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  // 时间戳转时间
  String timestampToStr(int timestamp) {
    if (timestamp == 0) return '';
    if (timestamp.toString().length == 10) {
      timestamp *= 1000;
    }
    return DateTime.fromMillisecondsSinceEpoch(timestamp).toLocal().toString().substring(0, 19);
  }

  // 时间转时间戳 1970-01-01 00:00:00.00000
  int strToTimestamp(String timeStr) {
    return DateTime.parse(timeStr).millisecondsSinceEpoch;
  }

  // 字符串md5
  String md5(String content) {
    Uint8List data = const Utf8Encoder().convert(content);
    crypto.Hash md5 = crypto.md5;
    crypto.Digest digest = md5.convert(data);
    return digest.toString();
  }

  // 字符串转二进制
  Uint8List encodeBytes(String str) {
    List<int> encodedString = utf8.encode(str);
    int encodedLength = encodedString.length;
    ByteData data = ByteData(encodedLength + 4);
    data.setUint32(0, encodedLength, Endian.big);
    Uint8List bytes = data.buffer.asUint8List();
    bytes.setRange(4, encodedLength + 4, encodedString);
    return bytes;
  }

  // 二进制转字符串
  String decodeBytes(Uint8List str) {
    return utf8.decode(str);
  }

  // 字符串格式化utf8
  String encodeUtf8(String str) {
    Utf8Decoder decoder = const Utf8Decoder();
    return decoder.convert(encodeBytes(str));
  }

  // 字符串转base64
  String encodeBase64(String str) {
    return base64Encode(utf8.encode(str));
  }

  // base64转字符串
  String decodeBase64(String str) {
    return String.fromCharCodes(base64Decode(str));
  }

  // 字符串转二进制数组
  List<int> encodeByteList(List<dynamic> data) {
    List<int> dataBit = [];
    for (dynamic element in data) {
      dataBit.add(element as int);
    }
    return dataBit;
  }

  // 二进制数组转二进制
  Uint8List byteListToBytes(List<int> data) {
    return Uint8List.fromList(data);
  }

  // 字符串指定位置插入指定符号
  String stringInsertion(String str, int offs, String ins) {
    String start = str.substring(0, offs);
    start += ins;
    String end = str.substring(offs, str.length);
    return start + end;
  }

  // UDP 客户端
  Future<String> clentUDP(int port) async {
    RawDatagramSocket rawDgramSocket = await RawDatagramSocket.bind('0.0.0.0', port);
    // rawDgramSocket.send(utf8.encode('hello,world!'), InternetAddress('0.0.0.0'), port);
    await for (RawSocketEvent event in rawDgramSocket) {
      if (event == RawSocketEvent.read) {
        return utf8.decode(rawDgramSocket.receive()!.data);
      }
    }
    return '';
  }

  // 接口监听
  Future<void> socketListen(BuildContext context, int port, int s) async {
    Duration timeoutDuration = Duration(milliseconds: s * 1000);
    RawDatagramSocket rawDgramSocket = await RawDatagramSocket.bind('0.0.0.0', port);
    rawDgramSocket.timeout(timeoutDuration, onTimeout: ((sink) {
      rawDgramSocket.close();
    })).listen((event) async {
      if (event == RawSocketEvent.read) {
        FileHelper().jsonWrite(key: 'server_address', value: utf8.decode(rawDgramSocket.receive()!.data));
        rawDgramSocket.close();
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
