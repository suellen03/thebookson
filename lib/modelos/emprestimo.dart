class Emprestimo {
  String _id ;
  DateTime _dataretirada ;
  DateTime _datadevolucao ;
  double _multa;
  String _fkusuario;
  String _fklivro;

  Emprestimo(this._id, this._dataretirada, this._datadevolucao, this._multa,
      this._fkusuario, this._fklivro);

  String get fklivro => _fklivro;

  set fklivro(String value) {
    _fklivro = value;
  }

  String get fkusuario => _fkusuario;

  set fkusuario(String value) {
    _fkusuario = value;
  }

  double get multa => _multa;

  set multa(double value) {
    _multa = value;
  }

  DateTime get datadevolucao => _datadevolucao;

  set datadevolucao(DateTime value) {
    _datadevolucao = value;
  }

  DateTime get dataretirada => _dataretirada;

  set dataretirada(DateTime value) {
    _dataretirada = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}