// ignore_for_file: non_constant_identifier_names

import 'package:app/notifier/base_notifier.dart';

class SupplierNotifier extends BaseNotifier {
  void SupplierNew({
    required URL,
    required Name,
    required Email,
    required Tel,
    required Address,
    required SupplierInfo,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await supplierApi.SupplierNew(
        URL: URL,
        Name: Name,
        Email: Email,
        Tel: Tel,
        Address: Address,
        SupplierInfo: SupplierInfo,
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

  void SupplierList({
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
      await supplierApi.SupplierList(
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

  void SupplierAll({
    required URL,
    required Order,
    required Stext,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await supplierApi.SupplierAll(
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

  void SupplierData({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await supplierApi.SupplierData(
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

  void SupplierDel({
    required URL,
    required ID,
  }) async {
    operationStatus = false;
    operationMemo = '';
    operationData = Null;
    try {
      await supplierApi.SupplierDel(
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
