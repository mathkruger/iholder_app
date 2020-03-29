class AutenticacaoModel {
  String login;
  String password;

  AutenticacaoModel({this.login, this.password});

  AutenticacaoModel.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }
}
