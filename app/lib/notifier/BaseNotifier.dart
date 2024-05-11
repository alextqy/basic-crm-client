// ignore_for_file: non_constant_identifier_names, prefer_final_fields, unused_field

import 'package:flutter/material.dart';

import 'package:app/model/AdminModel.dart';
import 'package:app/model/AfterServiceModel.dart';
import 'package:app/model/AnnouncementModel.dart';
import 'package:app/model/CompanyModel.dart';
import 'package:app/model/CustomerModel.dart';
import 'package:app/model/CustomerQAModel.dart';
import 'package:app/model/DistributorModel.dart';
import 'package:app/model/ManagerGroupModel.dart';
import 'package:app/model/ManagerModel.dart';
import 'package:app/model/OrderModel.dart';
import 'package:app/model/ProductModel.dart';
import 'package:app/model/ResultModel.dart';
import 'package:app/model/ResultListModel.dart';
import 'package:app/model/SalesPlanModel.dart';
import 'package:app/model/SalesTargetModel.dart';
import 'package:app/model/SupplierModel.dart';

import 'package:app/api/AdminApi.dart';
import 'package:app/api/AfterServiceApi.dart';
import 'package:app/api/AnnouncementApi.dart';
import 'package:app/api/CompanyApi.dart';
import 'package:app/api/CustomerApi.dart';
import 'package:app/api/CustomerQAApi.dart';
import 'package:app/api/DistributorApi.dart';
import 'package:app/api/GroupApi.dart';
import 'package:app/api/ManagerApi.dart';
import 'package:app/api/OrderApi.dart';
import 'package:app/api/ProductApi.dart';
import 'package:app/api/SalesPlanApi.dart';
import 'package:app/api/SalesTargetApi.dart';
import 'package:app/api/SupplierApi.dart';

class BaseNotifier extends ChangeNotifier {
  bool OperationStatus = false;
  String OperationMemo = "";

  /// MODEL ==========================================
  AdminModel _AdminModel = AdminModel();
  AfterServiceModel _AfterServiceModel = AfterServiceModel();
  AnnouncementModel _AnnouncementModel = AnnouncementModel();
  CompanyModel _CompanyModel = CompanyModel();
  CustomerModel _CustomerModel = CustomerModel();
  CustomerQAModel _CustomerQAModel = CustomerQAModel();
  DistributorModel _DistributorModel = DistributorModel();
  ManagerGroupModel _ManagerGroupModel = ManagerGroupModel();
  ManagerModel _ManagerModel = ManagerModel();
  OrderModel _OrderModel = OrderModel();
  ProductModel _ProductModel = ProductModel();
  ResultModel _ResultModel = ResultModel();
  ResultListModel _ResultListModel = ResultListModel();
  SalesPlanModel _SalesPlanModel = SalesPlanModel();
  SalesTargetModel _SalesTargetModel = SalesTargetModel();
  SupplierModel _SupplierModel = SupplierModel();

  /// API ==========================================
  AdminApi _AdminApi = AdminApi();
  AfterServiceApi _AfterServiceApi = AfterServiceApi();
  AnnouncementApi _AnnouncementApi = AnnouncementApi();
  CompanyApi _CompanyApi = CompanyApi();
  CustomerApi _CustomerApi = CustomerApi();
  CustomerQAApi _CustomerQAApi = CustomerQAApi();
  DistributorApi _DistributorApi = DistributorApi();
  GroupApi _ManagerGroupApi = GroupApi();
  ManagerApi _ManagerApi = ManagerApi();
  OrderApi _OrderApi = OrderApi();
  ProductApi _ProductApi = ProductApi();
  SalesPlanApi _SalesPlanApi = SalesPlanApi();
  SalesTargetApi _SalesTargetApi = SalesTargetApi();
  SupplierApi _SupplierApi = SupplierApi();
}
