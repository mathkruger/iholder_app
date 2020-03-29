import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:iholder_app/pages/tabs.pages.dart';

class SplashPage extends StatelessWidget {
  Future delay(context) async {
    await new Future.delayed(
        new Duration(
          milliseconds: 3000,
        ), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TabsPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    delay(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            height: 300,
            child: FlareActor(
              "assets/animations/iholder.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              isPaused: false,
              animation: 'Untitled',
            ),
          ),
          Text(
            "IHolder",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
