import 'package:flutter/material.dart';
import 'package:iholder_app/blocs/usuario.bloc.dart';
import 'package:iholder_app/pages/settings.page.dart';
import 'package:iholder_app/ui/shared/widgets/conta/authenticated-user-card.widget.dart';
import 'package:iholder_app/ui/shared/widgets/conta/unauthenticated-user-card.widget.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UsuarioBloc>(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
        body: bloc.usuario == null
            ? UnauthenticatedUserCard()
            : AuthenticatedUserCard());
  }
}
