import 'package:flutter/material.dart';
import 'package:iholder_app/pages/tabs.pages.dart';
import 'package:iholder_app/themes/light.theme.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
