import 'package:flutter/material.dart';
import 'package:netsecurityapp/config/token_get.dart';
import 'package:netsecurityapp/provider/app_global_provider.dart';
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
    );
  }
}
