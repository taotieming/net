import 'package:flutter/material.dart';
import 'package:netsecurityapp/config/app_route.dart';
import 'package:netsecurityapp/config/token_get.dart';

class ManagerAcountPage extends StatefulWidget {
  const ManagerAcountPage({super.key});

  @override
  State<ManagerAcountPage> createState() => _ManagerAcountPageState();
}

class _ManagerAcountPageState extends State<ManagerAcountPage> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    TokenGet().getToken().then((value) {
      print(value);
    });

    print("账户管理界面初始化");
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
