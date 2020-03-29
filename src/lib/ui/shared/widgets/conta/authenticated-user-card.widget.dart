import 'package:flutter/material.dart';
import 'package:iholder_app/blocs/usuario.bloc.dart';
import 'package:provider/provider.dart';

class AuthenticatedUserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UsuarioBloc>(context);
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("Bem-vindo, ${bloc.usuario.nome}"),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: bloc.sair,
              child: Text("Sair"),
            )
          ],
        ),
      ),
    );
  }
}
