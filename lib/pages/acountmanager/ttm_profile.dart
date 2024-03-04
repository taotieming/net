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
          Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: Text('修改密码')),
              ElevatedButton(onPressed: () {}, child: Text('退出登录')),
              ElevatedButton(onPressed: () {}, child: Text('修改信息')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.manageacount);
                  },
                  child: Text('账户管理')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoute.studyCenter);
                  },
                  child: Text('学习中心')),
              ElevatedButton(onPressed: () {}, child: Text('竞赛中心')),
              ElevatedButton(onPressed: () {}, child: Text('积分中心')),
              ElevatedButton(onPressed: () {}, child: Text('课堂管理')),
              ElevatedButton(onPressed: () {}, child: Text('实验镜像管理')),
              ElevatedButton(onPressed: () {}, child: Text('实训资源管理')),
              ElevatedButton(onPressed: () {}, child: Text('实训资源管理')),
              ElevatedButton(onPressed: () {}, child: Text('课堂资料管理')),
              ElevatedButton(onPressed: () {}, child: Text('题目管理')),
              ElevatedButton(onPressed: () {}, child: Text('试卷管理')),
              ElevatedButton(onPressed: () {}, child: Text('基础配置')),
              ElevatedButton(onPressed: () {}, child: Text('账户管理')),
              ElevatedButton(onPressed: () {}, child: Text('共享管理')),
              ElevatedButton(onPressed: () {}, child: Text('权限管理')),
            ],
          ),

          //
        ],
      ),
    );
  }
}
