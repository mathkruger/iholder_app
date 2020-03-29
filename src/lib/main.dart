import 'package:flutter/material.dart';
import 'package:iholder_app/pages/splash.page.dart';
import 'package:iholder_app/pages/tabs.pages.dart';
import 'package:iholder_app/themes/light.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IHolder',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: SplashPage(),
    );
  }
}
