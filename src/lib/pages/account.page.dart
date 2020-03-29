import 'package:flutter/material.dart';
import 'package:iholder_app/pages/settings.page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Text("AccountPage works"),
    );
  }
}
