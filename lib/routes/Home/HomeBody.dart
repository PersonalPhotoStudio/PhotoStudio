import 'package:flutter/material.dart';
import 'package:photo_studio/routes/Home/HomeRoute.dart';

/// Home 主体
class HomeBody extends StatelessWidget {
  /// 创建 Home 页面的主体
  const HomeBody({Key? key}) : super(key: key);

  /// 使用 GridView
  ///
  /// 文档：https://api.flutter.dev/flutter/widgets/GridView-class.html
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            child: Center(child: Text("AA")),
            color: Colors.teal[300],
          ),
          Container(
            child: Center(child: Text("Center")),
            color: Colors.teal[400],
          ),
          Container(
            child: Center(child: Text("BB")),
            color: Colors.teal[500],
          ),
          Container(
            child: Center(child: Text("CC")),
            color: Colors.teal[600],
          ),
          Container(
            child: Center(child: Text("DD")),
            color: Colors.teal[700],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            child: Center(
              child: ElevatedButton(
                onPressed: HomeShareDrawer.of(context).onOpen,
                child: const Text('open Drawer'),
              ),
            ),
            color: Colors.teal[200],
          ),
        ],
      ),
    );
  }
}
