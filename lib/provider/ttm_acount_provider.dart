import 'package:flutter/material.dart';
import 'package:netsecurityapp/data/model/manager_model.dart';
import 'package:netsecurityapp/net/admin_list_server.dart';

class AcountManagerProvider extends ChangeNotifier {
  final List<ManagerACount> adminList = [];

  getAllMAnagerList(String keyword) async {
    adminList.clear();

    adminList.addAll(await AdminListServer().call());

    notifyListeners();
  }
}
