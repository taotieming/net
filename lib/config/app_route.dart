import 'package:netsecurityapp/pages/acountmanager/manager_acount_page.dart';
import 'package:netsecurityapp/pages/acountmanager/ttm_profile.dart';
import 'package:netsecurityapp/pages/acountmanager/ttm_userlogin.dart';
import 'package:netsecurityapp/pages/mainpage.dart';
import 'package:netsecurityapp/pages/studycenter/provider/study_center_provider.dart';
import 'package:netsecurityapp/pages/studycenter/study_center.dart';
import 'package:netsecurityapp/provider/login_provider.dart';
import 'package:provider/provider.dart';

class AppRoute {
  static final pages = {
    login: (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: NetSecuLoginPage(),
        ),
    // login: (context) => NetSecuLoginPage(),
    // home: (context) => HomePage(),
    main: (context) => MainPage(),
    // editProfile: (context) => EditprofilePage(),
    // nearby: (context) => NearByPage(),
    user: (context) => MyProfilePage(),
    manageacount: (context) => ManagerAcountPage(),

    studyCenter: (context) => ChangeNotifierProvider(
          create: (context) => StudyCenterProvider(),
          child: StudyCenterPage(),
        )
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/editprofile';
  static const nearby = '/nearby';
  static const user = '/user';
  static const manageacount = '/editprofile/managerzcount';
  static const studyCenter = '/editprofile/studycenter';
}
