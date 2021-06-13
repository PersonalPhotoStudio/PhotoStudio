import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_studio/routes/Home/HomeBody.dart';
import 'package:photo_studio/routes/Home/HomeDraw.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // 打开 Draw
  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  // 关闭 Draw
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text('Drawer Demo')),
      body: HomeBody(),
      drawer: HomeDraw(onClose: _closeDrawer),
      drawerEnableOpenDragGesture: false,
    );
  }
}
