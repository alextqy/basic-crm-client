// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:io';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:file_selector/file_selector.dart';
import 'package:mime/mime.dart';
import 'dart:convert';

class FileHelper {
  // 文件创建
  bool New(String FilePath) {
    try {
      if (FilePath.isNotEmpty) {
        File file = File(FilePath);
        file.createSync(recursive: true);
        return true;
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  // 文件写入
  bool Write(String FileName, String Content) {
    File file = File(FileName);
    try {
      file.writeAsStringSync(Content);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件写入(异步)
  Future<bool> WriteAsync(String FileName, String Content) async {
    File file = File(FileName);
    file.writeAsString(Content);
    return true;
  }

  // 文件追加写入
  Future<bool> WriteAppend(String FilePath, String Content) async {
    try {
      File file = File(FilePath);
      IOSink isk = file.openWrite(mode: FileMode.writeOnlyAppend);
      isk.write(Content);
      await isk.close();
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件二进制写入
  bool WriteBytes(String FileName, List<int> Content) {
    File file = File(FileName);
    try {
      file.writeAsBytes(Content);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件二进制追加写入
  Future<bool> WriteBytesAppend(File F, int Position, Uint8List Content) async {
    RandomAccessFile raf = await F.open(mode: FileMode.append);
    RandomAccessFile rafp = await raf.setPosition(Position);
    try {
      rafp.writeFrom(Content);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件读取
  String Read(String FilePath) {
    File F = File(FilePath);
    try {
      return F.readAsStringSync();
    } catch (e) {
      return '';
    }
  }

  // 文件随机读取
  List<int> ReadRandom(String FilePath, int Start, int End) {
    File F = File(FilePath);
    List<int> content = [];
    F.openRead(Start, End).listen((Data) {
      content.addAll(Data);
    });
    return content;
  }

  // 读取二进制
  Future<Uint8List> ReadBytes(File F, int Position, int Length) async {
    RandomAccessFile Raf = await F.open(mode: FileMode.read);
    RandomAccessFile Content = await Raf.setPosition(Position);
    Uint8List C = Content.readSync(Length);
    await Raf.close();
    return C;
  }

  // 文件删除
  bool Del(String FilePath) {
    File F = File(FilePath);
    try {
      F.deleteSync();
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件重命名
  bool Rename(String FilePath, String NewName) {
    File F = File(FilePath);
    try {
      F.renameSync(NewName);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件复制
  bool Copy(String FilePath, String NewName) {
    File F = File(FilePath);
    try {
      F.copySync(NewName);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件是否存在
  bool Exists(String FilePath) {
    File F = File(FilePath);
    return F.existsSync();
  }

  // 文件大小
  int Size(String FilePath) {
    File F = File(FilePath);
    return F.lengthSync();
  }

  // 文件类型
  String? Type(String FilePath) {
    return lookupMimeType(FilePath);
  }

  // 文件夹创建
  bool DirNew(String DirPath) {
    Directory Dir = Directory(DirPath);
    try {
      if (!Directory(DirPath).existsSync()) {
        Dir.createSync(recursive: true);
      }
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件夹删除
  bool DelDir(String DirPath) {
    Directory Dir = Directory(DirPath);
    try {
      Dir.deleteSync(recursive: true);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件夹是否存在
  bool DirExists(String DirPath) {
    Directory Dir = Directory(DirPath);
    return Dir.existsSync();
  }

  // 是否是文件夹
  bool IsDir(String Path) {
    return FileSystemEntity.isDirectorySync(Path);
  }

  // 获取文件列表
  List<FileSystemEntity> DirList(String DirPath) {
    Directory Dir = Directory(DirPath);
    return Dir.listSync();
  }

  // 打开文件夹
  void DirOpen({
    required String DirPath,
    required List<String> L,
    String FileName = '*',
  }) async {
    XTypeGroup XType = XTypeGroup(label: FileName, extensions: L);
    await openFile(
      acceptedTypeGroups: [XType],
      initialDirectory: DirPath,
      confirmButtonText: '',
    );
  }

  // 选择文件
  Future<String?> FileCheck({
    required String DirPath,
    required List<String> L,
    String FileName = '*',
  }) async {
    XTypeGroup XType = XTypeGroup(label: FileName, extensions: L);
    XFile? TempPath = await openFile(
      acceptedTypeGroups: [XType],
      initialDirectory: DirPath,
      confirmButtonText: '',
    );
    return TempPath?.path;
  }

  // 根目录
  Directory AppRoot() {
    return Directory.current;
  }

  /// 文件MD5
  static String CryptoMD5(File F) {
    return md5.convert(F.readAsBytesSync()).toString();
  }

  /// 文件MD5(异步)
  static Future<String> CryptoMD5Async(File F) async {
    return (await md5.bind(F.openRead()).first).toString();
  }

  // 写入json文件
  bool JsonWrite({String Key = '', dynamic Value = '', String SavePath = 'config.json'}) {
    if (Key.isNotEmpty && SavePath.isNotEmpty) {
      try {
        File jsonFile = File(SavePath);
        if (!jsonFile.existsSync()) {
          jsonFile.createSync(recursive: true);
        }
        // 读取文件
        String jsonStr = jsonFile.readAsStringSync();
        Map<String, dynamic> jsonStrMap = {};
        if (jsonStr.isNotEmpty) {
          jsonStrMap = jsonDecode(jsonStr);
        }
        jsonStrMap[Key] = Value;
        jsonFile.writeAsStringSync(jsonEncode(jsonStrMap));
        return true;
      } catch (e) {
        return false;
      }
    }
    return false;
  }

  // 读取json文件
  String JsonRead({String Key = '', String FilePath = 'config.json'}) {
    File JsonFile = File(FilePath);
    if (JsonFile.existsSync()) {
      String JsonStr = JsonFile.readAsStringSync();
      Map<String, dynamic> JsonContent = jsonDecode(JsonStr);
      return JsonContent[Key].toString();
    }
    return '';
  }
}
