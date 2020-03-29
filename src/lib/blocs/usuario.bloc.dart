import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:iholder_app/configurations/settings.dart';
import 'package:iholder_app/models/autenticacao.model.dart';
import 'package:iholder_app/models/usuario.model.dart';
import 'package:iholder_app/repositories/usuario.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsuarioBloc extends ChangeNotifier {
  var usuario = new UsuarioModel();

  UsuarioBloc() {
    usuario = null;
    loadUser();
  }

  Future<UsuarioModel> autenticar(AutenticacaoModel model) async {
    try {
      var prefs = await SharedPreferences.getInstance();
      var repository = new UsuarioRepository();

      var res = await repository.authenticate(model);

      usuario = res;
      await prefs.setString('usuario', jsonEncode(res));

      return res;
    } catch (ex) {
      print(ex);
      usuario = null;
      return usuario;
    }
  }

  sair() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('usuario', null);
    usuario = null;
    notifyListeners();
  }

  Future loadUser() async {
    var prefs = await SharedPreferences.getInstance();
    var userData = prefs.getString('usuario');
    if (userData != null) {
      var res = UsuarioModel.fromJson(jsonDecode(userData));
      Settings.usuario = res;
      usuario = res;
    }
  }
}
