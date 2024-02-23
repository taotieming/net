import 'package:flutter/material.dart';
import 'package:netsecurityapp/commponet/my_bottom_item.dart';
import 'package:netsecurityapp/config/app_icons.dart';
import 'package:netsecurityapp/pages/acountmanager/ttm_profile.dart';

enum Menus {
  home,
  competion,
  add,
  ctfclub,
  user,
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyNavigationBar(
        currentindex: Menus.home,
        OnTap: (value) {
          // if (value == Menus.add) {
          //     showModalBottomSheet(
          //         context: context,
          //         isScrollControlled: true,
          //         backgroundColor: Colors.transparent,
          //         builder: (context) {
          //           return con();
          //         });
          //     return;
          //   }
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = [
    Container(),
    const Center(
      child: Text('Favorite'),
    ),
    const Center(
      child: Text('add'),
    ),
    Container(),
    const MyProfilePage(),
  ];
}

class MyNavigationBar extends StatelessWidget {
  final Menus currentindex;
  final ValueChanged<Menus> OnTap;
  const MyNavigationBar(
      {super.key, required this.currentindex, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      height: 87,
      color: Colors.red,
      child: Row(
        children: [
          Expanded(
            child: BottomNavigationItem(
                onPressed: () {},
                icon: AppIcons.icHome,
                current: currentindex,
                name: Menus.home),
          ),
          Expanded(
            child: BottomNavigationItem(
                onPressed: () {},
                icon: AppIcons.icHome,
                current: currentindex,
                name: Menus.competion),
          ),
          Expanded(
            child: BottomNavigationItem(
                onPressed: () => OnTap(Menus.ctfclub),
                icon: AppIcons.icHome,
                current: currentindex,
                name: Menus.ctfclub),
          ),
          Expanded(
            child: BottomNavigationItem(
                onPressed: () => OnTap(Menus.user),
                icon: AppIcons.icUser,
                current: currentindex,
                name: Menus.user),
          ),
        ],
      ),
    );
  }
}
