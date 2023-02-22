import 'dart:math';

import 'package:flutter/material.dart';

class CadastroLivros extends StatefulWidget {
  const CadastroLivros({Key? key}) : super(key: key);

  @override
  State<CadastroLivros> createState() => _CadastroLivrosState();
}

class _CadastroLivrosState extends State<CadastroLivros> {

  TextEditingController _controllerTitulo = TextEditingController();
  TextEditingController _controllerGenero = TextEditingController();
  TextEditingController _controllerFaixaEtaria = TextEditingController();
  TextEditingController _controllerExemplares = TextEditingController();
  TextEditingController _controllerBestSeller = TextEditingController();
  TextEditingController _controllerAnoPublicacao = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Livros"),
        backgroundColor: const Color(0xff620a03),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff620a03),
        child: Row(
          children: const <Widget>[],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Campo Titulo
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField (
                      controller: _controllerTitulo,
                      keyboardType: TextInputType.text,
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Digite o Título do Livro:",
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),
                  // Campo Gênero
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerGenero,
                      keyboardType: TextInputType.text,
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Digite o Gênero do Livro:",
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),
                  // Campo Faixa Étaria
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerFaixaEtaria,
                      keyboardType: TextInputType.text,
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Digite a Faixa Etária do Livro:",
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),
                  // Campo Exemplares
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerExemplares,
                      keyboardType: TextInputType.number,
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Digite a quantidade de Exemplares do Livro:",
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),
                  // Campo BestSeller
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerBestSeller,
                      keyboardType: TextInputType.text,
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "O Livro é BestSeller?",
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),
                  // Campo Ano de publicação
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child:  TextFormField(
                      controller: _controllerAnoPublicacao,
                      keyboardType: TextInputType.number,
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Digite o Ano de Publicação do Livro:",
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      child: const Text("Cadastrar"),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print("Deu certo!");

                        }
                      }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
