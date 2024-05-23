// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

class AnnouncementNotifier extends BaseNotifier {
  void AnnouncementNew({
    required URL,
    required Title,
    required Content,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await announcementApi.AnnouncementNew(
        URL: URL,
        Title: Title,
        Content: Content,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await announcementApi.AnnouncementList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        AuthorID: AuthorID,
        Display: Display,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
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
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await announcementApi.AnnouncementAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        AuthorID: AuthorID,
        Display: Display,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await announcementApi.AnnouncementData(
        URL: URL,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await announcementApi.AnnouncementDel(
        URL: URL,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }

  void AnnouncementDisplay({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await announcementApi.AnnouncementDisplay(
        URL: URL,
        ID: ID,
      ).then((value) {
        operationStatus = value.State;
        operationMemo = value.Message;
        operationData = value.Data;
      });
    } catch (e) {
      operationMemo = e.toString();
    } finally {
      notifyListeners();
    }
  }
}
