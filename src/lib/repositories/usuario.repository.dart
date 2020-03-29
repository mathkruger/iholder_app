import 'package:dio/dio.dart';
import 'package:iholder_app/configurations/settings.dart';
import 'package:iholder_app/models/autenticacao.model.dart';
import 'package:iholder_app/models/usuario.model.dart';

class UsuarioRepository {
  Future<UsuarioModel> authenticate(AutenticacaoModel model) async {
    var url = "${Settings.apiUrl}usuario/entrar";

    Response response = await Dio().post(url, data: model);
    print(response);
    return UsuarioModel.fromJson(response.data.data);
  }
}
