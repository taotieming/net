// 账户管理这里的账户管理员列表

import 'package:flutter/material.dart';

class AcountListItem extends StatelessWidget {
  final String nikename;
  final String name;
  final String school;
  const AcountListItem(
      {super.key,
      required this.nikename,
      required this.name,
      required this.school});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Text(name),
          Spacer(),
          Text(nikename),
          Spacer(),
          Text(school),
        ],
      ),
    );
  }
}
