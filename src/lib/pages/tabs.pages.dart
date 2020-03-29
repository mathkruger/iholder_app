import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account.page.dart';
import 'dashboard.page.dart';
import 'home.page.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          HomePage(),
          DashboardPage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        controller: tabController,
        tabs: [
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
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
