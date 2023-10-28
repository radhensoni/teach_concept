import 'package:flutter/material.dart';

class EXTabbar extends StatefulWidget {
  @override
  _EXTabbarState createState() => _EXTabbarState();
}

class _EXTabbarState extends State<EXTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: "Android",
              ),
              Tab(
                icon: Icon(Icons.phone_iphone),
                text: "Iphone",
              ),
            ],
          ),
          title: const Text('Example TabBarView'),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Android page"),
            ),
            Center(
              child: Text("Iphone page"),
            ),
          ],
        ),
      ),
    );
  }
}
