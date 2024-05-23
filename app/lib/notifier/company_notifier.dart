// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

class CompanyNotifier extends BaseNotifier {
  void CompanyNew({
    required URL,
    required CompanyName,
    required Remark,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await companyApi.CompanyNew(
        URL: URL,
        CompanyName: CompanyName,
        Remark: Remark,
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

  void CompanyList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await companyApi.CompanyList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
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

  void CompanyAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await companyApi.CompanyAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
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

  void CompanyData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await companyApi.CompanyData(
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

  void CompanyDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await companyApi.CompanyDel(
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
