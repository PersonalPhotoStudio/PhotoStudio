import 'package:flutter/material.dart';
import 'package:photo_studio/routes/Home/HomeRoute.dart';

/// Home 主体
class HomeBody extends StatelessWidget {
  /// 创建 Home 页面的主体
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: HomeShareDrawer.of(context).onOpen,
          child: const Text('open Drawer'),
        ),
      ),
    );
  }
}
