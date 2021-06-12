import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutRoute extends StatefulWidget {
  const AboutRoute({Key? key}) : super(key: key);

  @override
  _AboutRouteState createState() => _AboutRouteState();
}

class _AboutRouteState extends State<AboutRoute> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('about'),
          bottom: TabBar(
            tabs: [
              Tab(text: "INTRO"),
              Tab(text: "EXPERIENCES"),
              Tab(text: "SKILLS"),
            ],
          ),
        ),
      ),
    );
  }
}
