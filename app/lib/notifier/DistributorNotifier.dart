// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/notifier/BaseNotifier.dart';

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
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
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
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
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

  void DistributorAll({
    required URL,
    required Order,
    required Stext,
    required CompanyID,
    required ManagerID,
    required AfterServiceID,
    required Level,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await distributorApi.DistributorAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        CompanyID: CompanyID,
        ManagerID: ManagerID,
        AfterServiceID: AfterServiceID,
        Level: Level,
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

  void DistributorData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await distributorApi.DistributorData(
        URL: URL,
        ID: ID,
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

  void DistributorDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await distributorApi.DistributorDel(
        URL: URL,
        ID: ID,
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
