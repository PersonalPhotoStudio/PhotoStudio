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
    return HomeShareDrawer(
      onOpen: _openDrawer,
      onClose: _closeDrawer,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: const Text('Drawer Demo')),
        body: HomeBody(),
        drawer: HomeDraw(),
        drawerEnableOpenDragGesture: false,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _openDrawer,
          tooltip: 'Open',
          child: const Icon(Icons.menu),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

/// 共享 Drawer 而定义的继承组件
class HomeShareDrawer extends InheritedWidget {
  final VoidCallback? onOpen; // 打开
  final VoidCallback? onClose; // 关闭

  HomeShareDrawer({
    Key? key,
    required Widget child,
    this.onOpen,
    this.onClose,
  }) : super(key: key, child: child);

  /// of 静态方法
  static HomeShareDrawer of(BuildContext context) {
    ///用法1: 数据变化，触发子组件 didChangeDependencies 钩子
    // final HomeShareDrawer? result =
    //     context.dependOnInheritedWidgetOfExactType<HomeShareDrawer>();

    ///用法2: 共享数据变化，不会调用子组件 didChangeDependencies 钩子，子组件仅引用数据
    final result = context
        .getElementForInheritedWidgetOfExactType<HomeShareDrawer>()!
        .widget as HomeShareDrawer?;
    return result!;
  }

  // 是否执行子树组件 didChangeDependencies 钩子
  @override
  bool updateShouldNotify(HomeShareDrawer oldWidget) {
    return onOpen != oldWidget.onOpen || onClose != oldWidget.onClose;
  }
}
