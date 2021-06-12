import 'package:photo_studio/routes/About/AboutRoute.dart';
import 'package:photo_studio/routes/Collect/CollectRoute.dart';
import 'package:photo_studio/routes/Home/HomeRoute.dart';
import 'package:flutter/material.dart';
import 'package:photo_studio/themes/common.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Photo Studio',
        theme: commonTheme,
        initialRoute: '/',
        // 注册命名路由表
        routes: <String, WidgetBuilder>{
          "/": (context) => new HomeRoute(),
          "/collect": (context) => new CollectRoute(),
          "/about": (context) => new AboutRoute()
        });
  }
}
