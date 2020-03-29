import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Text(
          "IHolder",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
