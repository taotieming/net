import 'package:flutter/material.dart';
import 'package:netsecurityapp/commponet/ttm_user_avart.dart';
import 'package:netsecurityapp/config/app_route.dart';
import 'package:netsecurityapp/config/app_string.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.myProfile),
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Center(
              child: UserAvatar(
            size: 40,
          )),
          Text('姓名'),
          Text('学校'),
          Text('院系'),
          Text('专业'),
          Text('班级'),
          Text('性别'),
          Text('学号'),
          Text('手机号'),
          Text('账户管理'),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('修改密码')),
              ElevatedButton(onPressed: () {}, child: Text('退出登录')),
              ElevatedButton(onPressed: () {}, child: Text('修改信息')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.manageacount);
                  },
                  child: Text('账户管理'))
            ],
          )

          //
        ],
      ),
    );
  }
}
