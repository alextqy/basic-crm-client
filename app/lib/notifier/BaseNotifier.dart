// ignore_for_file: file_names, non_constant_identifier_names

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
  String OperationMemo = '';
  dynamic OperationData = Null;

  /// MODEL ==========================================
  AdminModel adminModel = AdminModel();
  AfterServiceModel afterServiceModel = AfterServiceModel();
  AnnouncementModel announcementModel = AnnouncementModel();
  CompanyModel companyModel = CompanyModel();
  CustomerModel customerModel = CustomerModel();
  CustomerQAModel customerQAModel = CustomerQAModel();
  DistributorModel distributorModel = DistributorModel();
  ManagerGroupModel managerGroupModel = ManagerGroupModel();
  ManagerModel managerModel = ManagerModel();
  OrderModel orderModel = OrderModel();
  ProductModel productModel = ProductModel();
  ResultModel resultModel = ResultModel();
  ResultListModel resultListModel = ResultListModel();
  SalesPlanModel salesPlanModel = SalesPlanModel();
  SalesTargetModel salesTargetModel = SalesTargetModel();
  SupplierModel supplierModel = SupplierModel();

  /// API ==========================================
  AdminApi adminApi = AdminApi();
  AfterServiceApi afterServiceApi = AfterServiceApi();
  AnnouncementApi announcementApi = AnnouncementApi();
  CompanyApi companyApi = CompanyApi();
  CustomerApi customerApi = CustomerApi();
  CustomerQAApi customerQAApi = CustomerQAApi();
  DistributorApi distributorApi = DistributorApi();
  GroupApi managerGroupApi = GroupApi();
  ManagerApi managerApi = ManagerApi();
  OrderApi orderApi = OrderApi();
  ProductApi productApi = ProductApi();
  SalesPlanApi salesPlanApi = SalesPlanApi();
  SalesTargetApi salesTargetApi = SalesTargetApi();
  SupplierApi supplierApi = SupplierApi();
}
