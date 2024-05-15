// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app/notifier/BaseNotifier.dart';

class ProductNotifier extends BaseNotifier {
  void ProductNew({
    required URL,
    required ProductName,
    required Price,
    required Cost,
    required Remark,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await productApi.ProductNew(
        URL: URL,
        ProductName: ProductName,
        Price: Price,
        Cost: Cost,
        Remark: Remark,
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

  void ProductList({
    required URL,
    required Page,
    required PageSize,
    required Order,
    required Stext,
    required Status,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await productApi.ProductList(
        URL: URL,
        Page: Page,
        PageSize: PageSize,
        Order: Order,
        Stext: Stext,
        Status: Status,
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

  void ProductAll({
    required URL,
    required Order,
    required Stext,
    required Status,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await productApi.ProductAll(
        URL: URL,
        Order: Order,
        Stext: Stext,
        Status: Status,
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

  void ProductData({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await productApi.ProductData(
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

  void ProductDel({
    required URL,
    required ID,
  }) async {
    OperationStatus = false;
    OperationMemo = '';
    OperationData = Null;
    try {
      await productApi.ProductDel(
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
