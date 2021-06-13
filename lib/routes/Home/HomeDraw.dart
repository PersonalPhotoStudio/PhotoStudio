import 'package:flutter/material.dart';
import 'package:photo_studio/routes/Home/HomeRoute.dart';

/// Home Drawer
class HomeDraw extends StatelessWidget {
  final VoidCallback? onClose;

  /// 创建 Home 页面的 Drawer
  const HomeDraw({
    Key? key,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // TODO
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: HomeShareDrawer.of(context).onClose,
              child: const Text('close Drawer'),
            ),
          )
        ],
      ),
    );
  }
}
