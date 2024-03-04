//ttm

import 'package:flutter/material.dart';
import 'package:netsecurityapp/pages/studycenter/data/type_list.dart';
import 'package:netsecurityapp/pages/studycenter/server/center_server.dart';

class StudyCenterProvider extends ChangeNotifier {
  final List<TypeListModel> typeList = [];

  getAllTypeList(String keyword) async {
    typeList.clear();

    typeList.addAll(await StudyCenterServer().call());

    notifyListeners();
  }
}
