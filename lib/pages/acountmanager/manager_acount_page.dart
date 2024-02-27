import 'package:flutter/material.dart';
import 'package:netsecurityapp/commponet/mangeger_acount_item.dart';
import 'package:netsecurityapp/provider/app_global_provider.dart';
import 'package:netsecurityapp/provider/ttm_acount_provider.dart';
import 'package:provider/provider.dart';

class ManagerAcountPage extends StatefulWidget {
  const ManagerAcountPage({super.key});

  @override
  State<ManagerAcountPage> createState() => _ManagerAcountPageState();
}

class _ManagerAcountPageState extends State<ManagerAcountPage> {
  @override
  void initState() {
    // TODO: implement initState
    print('界面初始化');
    super.initState();
    print(context.read<AppGlobalProvider>().token);
    context.read<AcountManagerProvider>().getAllMAnagerList('');

    //去请求 相关的  信息。并刷新界面
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账户管理'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Consumer<AcountManagerProvider>(
        builder:
            (BuildContext context, AcountManagerProvider value, Widget? child) {
          return ListView.separated(
              itemBuilder: (context, index) {
                final model = value.adminList[index];
                return AcountListItem(
                    nikename: model.adminName ?? "默认",
                    name: model.account ?? "默认",
                    school: model.email ?? "默认");
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 24,
                );
              },
              itemCount: value.adminList.length);
        },
      ),
    );
  }
}
