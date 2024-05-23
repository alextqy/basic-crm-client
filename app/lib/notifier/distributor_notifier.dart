// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

class DistributorNotifier extends BaseNotifier {
  void DistributorNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required DistributorInfo,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await distributorApi.DistributorNew(
        URL: URL,
        Name: Name,
        Email: Email,
        Tel: Tel,
        DistributorInfo: DistributorInfo,
        CompanyID: CompanyID,
        ManagerID: ManagerID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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

  void DistributorList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await distributorApi.DistributorList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        CompanyID: CompanyID,
        ManagerID: ManagerID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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

  void DistributorAll({
    required URL,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await distributorApi.DistributorAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        CompanyID: CompanyID,
        ManagerID: ManagerID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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

  void DistributorData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await distributorApi.DistributorData(
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

  void DistributorDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await distributorApi.DistributorDel(
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
