class Editora {
  String _id ;
  String _nome ;
  String _email;
  String _fone ;
  String _localizacao;

  Editora(this._id, this._nome, this._email, this._fone, this._localizacao);

  String get localizacao => _localizacao;

  set localizacao(String value) {
    _localizacao = value;
  }

  String get fone => _fone;

  set fone(String value) {
    _fone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}