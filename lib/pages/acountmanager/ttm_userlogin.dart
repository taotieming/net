import 'package:flutter/material.dart';
import 'package:netsecurityapp/config/app_route.dart';
import 'package:netsecurityapp/config/token_get.dart';
import 'package:netsecurityapp/provider/app_global_provider.dart';
import 'package:netsecurityapp/provider/login_provider.dart';
import 'package:netsecurityapp/styles/my_app_color.dart';
import 'package:provider/provider.dart';

class NetSecuLoginPage extends StatelessWidget {
  const NetSecuLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Align(
          alignment: Alignment(0.7, 0),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(children: [
                Spacer(),
                TextField(
                  onChanged: (value) {
                    context.read<LoginProvider>().username = value;
                  },
                  autofocus: true,
                  decoration: InputDecoration(hintText: "请输入账号"),
                ),
                Spacer(),
                TextField(
                  onChanged: (value) {
                    context.read<LoginProvider>().password = value;
                  },
                  autofocus: true,
                  decoration: InputDecoration(hintText: "请输入密码"),
                  obscureText: true,
                ),
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(220, 50),
                        maximumSize: Size(500, 50),
                        backgroundColor: AppColors.loginbuttoncolor),
                    onPressed: () {
                      // 点击了登录
                      context.read<LoginProvider>().login().then((value) {
                        print("先获取到token");
                        context.read<AppGlobalProvider>().token = value.token;
                        TokenGet().saveToken(value.token);
                        context.read<LoginProvider>().usertoken = value.token;
                      });
                      Navigator.of(context).pushReplacementNamed(AppRoute.main);
                    },
                    child: Text(
                      '登录',
                      style: TextStyle(color: Colors.white),
                    )),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: () {}, child: Text('注册')),
                    TextButton(onPressed: () {}, child: Text('忘记密码')),
                  ],
                )
              ]),
            ),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_backgroung_image.png'),
            fit: BoxFit.fill, // 完全填充
          ),
        ),
      ),
    );
  }
}
