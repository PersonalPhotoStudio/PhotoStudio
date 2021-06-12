import 'package:photo_studio/routes/about.dart';
import 'package:photo_studio/routes/home.dart';
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
          "/": (context) => new HomePage(title: 'Flutter Demo Home Page'),
          '/about': (context) => new AboutRoute()
        });
  }
}
