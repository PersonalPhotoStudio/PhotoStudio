import 'package:flutter/material.dart';

/// 关于
class AboutRoute extends StatelessWidget {
  const AboutRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('about')),
      // body: SafeArea(child: CustomScrollView(),),
    );
  }
}
