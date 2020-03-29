import 'package:flutter/material.dart';

class TabControllerScreen extends StatefulWidget {
  @override
  _TabControllerScreenState createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar _getTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          icon: new Icon(Icons.perm_data_setting),
        ),
        Tab(
          icon: new Icon(Icons.dashboard),
        ),
        Tab(
          icon: new Icon(Icons.perm_identity),
        ),
      ],
      controller: tabController,
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _getTabBar(),
            Container(
              height: 100,
              child: _getTabBarView(
                <Widget>[
                  Icon(Icons.perm_data_setting),
                  Icon(Icons.dashboard),
                  Icon(Icons.perm_identity),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
