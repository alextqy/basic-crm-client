import 'dart:io';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:file_selector/file_selector.dart';
import 'package:mime/mime.dart';
import 'dart:convert';

class FileHelper {
  // 文件创建
  bool make(String filePath) {
    try {
      if (filePath.isNotEmpty) {
        File file = File(filePath);
        file.createSync(recursive: true);
        return true;
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  // 文件写入
  bool write(String fileName, String content) {
    File file = File(fileName);
    try {
      file.writeAsStringSync(content);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件写入(异步)
  Future<bool> writeAsync(String fileName, String content) async {
    File file = File(fileName);
    file.writeAsString(content);
    return true;
  }

  // 文件追加写入
  Future<bool> writeAppend(String filePath, String content) async {
    try {
      File file = File(filePath);
      IOSink isk = file.openWrite(mode: FileMode.writeOnlyAppend);
      isk.write(content);
      await isk.close();
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件二进制写入
  bool writeBytes(String fileName, List<int> content) {
    File file = File(fileName);
    try {
      file.writeAsBytes(content);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件二进制追加写入
  Future<bool> writeBytesAppend(File file, int position, Uint8List content) async {
    RandomAccessFile raf = await file.open(mode: FileMode.append);
    RandomAccessFile rafp = await raf.setPosition(position);
    try {
      rafp.writeFrom(content);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件读取
  String read(String filePath) {
    File F = File(filePath);
    try {
      return F.readAsStringSync();
    } catch (e) {
      return '';
    }
  }

  // 文件随机读取
  List<int> readRandom(String filePath, int start, int end) {
    File F = File(filePath);
    List<int> content = [];
    F.openRead(start, end).listen((data) {
      content.addAll(data);
    });
    return content;
  }

  // 读取二进制
  Future<Uint8List> readBytes(File file, int position, int length) async {
    RandomAccessFile raf = await file.open(mode: FileMode.read);
    RandomAccessFile content = await raf.setPosition(position);
    Uint8List c = content.readSync(length);
    await raf.close();
    return c;
  }

  // 文件删除
  bool del(String filePath) {
    File F = File(filePath);
    try {
      F.deleteSync();
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件重命名
  bool rename(String filePath, String newName) {
    File F = File(filePath);
    try {
      F.renameSync(newName);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件复制
  bool copy(String filePath, String newName) {
    File F = File(filePath);
    try {
      F.copySync(newName);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件是否存在
  bool exists(String filePath) {
    File F = File(filePath);
    return F.existsSync();
  }

  // 文件大小
  int size(String filePath) {
    File F = File(filePath);
    return F.lengthSync();
  }

  // 文件类型
  String? type(String filePath) {
    return lookupMimeType(filePath);
  }

  // 文件夹创建
  bool dirMake(String dirPath) {
    Directory dir = Directory(dirPath);
    try {
      if (!Directory(dirPath).existsSync()) {
        dir.createSync(recursive: true);
      }
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件夹删除
  bool delDir(String dirPath) {
    Directory dir = Directory(dirPath);
    try {
      dir.deleteSync(recursive: true);
    } catch (e) {
      return false;
    }
    return true;
  }

  // 文件夹是否存在
  bool dirExists(String dirPath) {
    Directory dir = Directory(dirPath);
    return dir.existsSync();
  }

  // 是否是文件夹
  bool isDir(String path) {
    return FileSystemEntity.isDirectorySync(path);
  }

  // 获取文件列表
  List<FileSystemEntity> dirList(String dirPath) {
    Directory dir = Directory(dirPath);
    return dir.listSync();
  }

  // 打开文件夹
  void dirOpen({
    required String dirPath,
    required List<String> list,
    String fileName = '*',
  }) async {
    XTypeGroup xType = XTypeGroup(label: fileName, extensions: list);
    await openFile(
      acceptedTypeGroups: [xType],
      initialDirectory: dirPath,
      confirmButtonText: '',
    );
  }

  // 选择文件
  Future<String?> fileCheck({
    required String dirPath,
    required List<String> list,
    String fileName = '*',
  }) async {
    XTypeGroup xType = XTypeGroup(label: fileName, extensions: list);
    XFile? tempPath = await openFile(
      acceptedTypeGroups: [xType],
      initialDirectory: dirPath,
      confirmButtonText: '',
    );
    return tempPath?.path;
  }

  // 根目录
  Directory appRoot() {
    return Directory.current;
  }

  /// 文件MD5
  static String cryptoMD5(File file) {
    return md5.convert(file.readAsBytesSync()).toString();
  }

  /// 文件MD5(异步)
  static Future<String> cryptoMD5Async(File file) async {
    return (await md5.bind(file.openRead()).first).toString();
  }

  // 写入json文件
  bool jsonWrite({String key = '', dynamic value = '', String savePath = 'config.json'}) {
    if (key.isNotEmpty && savePath.isNotEmpty) {
      try {
        File jsonFile = File(savePath);
        if (!jsonFile.existsSync()) {
          jsonFile.createSync(recursive: true);
        }
        // 读取文件
        String jsonStr = jsonFile.readAsStringSync();
        Map<String, dynamic> jsonStrMap = {};
        if (jsonStr.isNotEmpty) {
          jsonStrMap = jsonDecode(jsonStr);
        }
        jsonStrMap[key] = value;
        jsonFile.writeAsStringSync(jsonEncode(jsonStrMap));
        return true;
      } catch (e) {
        return false;
      }
    }
    return false;
  }

  // 读取json文件
  String jsonRead({String key = '', String filePath = 'config.json'}) {
    File jsonFile = File(filePath);
    if (jsonFile.existsSync()) {
      String jsonStr = jsonFile.readAsStringSync();
      Map<String, dynamic> jsoncontent = jsonDecode(jsonStr);
      return jsoncontent[key].toString();
    }
    return '';
  }
}
