import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netsecurityapp/config/app_route.dart';
import 'package:netsecurityapp/provider/app_global_provider.dart';
import 'package:netsecurityapp/provider/ttm_acount_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // SharedPreferences.setMockInitialValues({});
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppGlobalProvider>(
        create: (context) => AppGlobalProvider(),
      ),
      ChangeNotifierProvider<AcountManagerProvider>(
        create: (context) => AcountManagerProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: NetSecuLoginPage(),
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
