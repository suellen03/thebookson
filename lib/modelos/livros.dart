
class Livro {
  // Atributos
  String _id;
  String _titulo;
  String _genero;
  String _faixaetaria;
  String _exemplares;
  bool _bestseller;
  int _anopubli;
  String _fkautor;
  String _fkeditora;

  Livro(
      this._id,
      this._titulo,
      this._genero,
      this._faixaetaria,
      this._exemplares,
      this._bestseller,
      this._anopubli,
      this._fkautor,
      this._fkeditora);

  String get fkeditora => _fkeditora;

  set fkeditora(String value) {
    _fkeditora = value;
  }

  String get fkautor => _fkautor;

  set fkautor(String value) {
    _fkautor = value;
  }

  int get anopubli => _anopubli;

  set anopubli(int value) {
    _anopubli = value;
  }

  bool get bestseller => _bestseller;

  set bestseller(bool value) {
    _bestseller = value;
  }

  String get exemplares => _exemplares;

  set exemplares(String value) {
    _exemplares = value;
  }

  String get faixaetaria => _faixaetaria;

  set faixaetaria(String value) {
    _faixaetaria = value;
  }

  String get genero => _genero;

  set genero(String value) {
    _genero = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}

