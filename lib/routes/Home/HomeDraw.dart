import 'package:flutter/material.dart';
import 'package:photo_studio/routes/Home/HomeRoute.dart';

/// Home Drawer
class HomeDraw extends StatelessWidget {
  /// 创建 Home 页面的 Drawer
  const HomeDraw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onClose = HomeShareDrawer.of(context).onClose;
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/girl.jpg'),
                  radius: 60,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: const Text('Name'),
            ),
          ),
          Divider(),
          _LinkList(),
        ],
      ),
    );
  }
}

class _LinkList extends StatelessWidget {
  const _LinkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Home', 'Collect', 'About'];
    final List<String> routes = <String>['/', '/collect', '/about'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Listener(
          onPointerDown: (event) {
            Navigator.pushNamed(context, routes[index]);
          },
          child: Container(
            height: 60,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('${entries[index]}')),
          ),
        );
      },
    );
  }
}
