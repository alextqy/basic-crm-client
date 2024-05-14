// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app/notifier/BaseNotifier.dart';

class AnnouncementNotifier extends BaseNotifier {
  void AnnouncementNew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await announcementApi.AnnouncementNew(
        URL,
        Title,
        Content,
        ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await announcementApi.AnnouncementList(
        URL,
        Page,
        PageSize,
        Order,
        Stext,
        AuthorID,
        Display,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementAll({
    required URL,
    required Order,
    required Stext,
    required AuthorID,
    required Display,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await announcementApi.AnnouncementAll(
        URL,
        Order,
        Stext,
        AuthorID,
        Display,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await announcementApi.AnnouncementData(
        URL,
        ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await announcementApi.AnnouncementDel(
        URL,
        ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementDisplay({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = "";
    OperationData = Null;
    try {
      await announcementApi.AnnouncementDisplay(
        URL,
        ID,
      ).then((Value) {
        OperationStatus = Value.State;
        OperationMemo = Value.Message;
        OperationData = Value.Data;
      });
    } catch (e) {
      OperationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }
}