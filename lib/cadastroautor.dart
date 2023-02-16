import 'package:flutter/material.dart';

class CadastroAutor extends StatefulWidget {
  const CadastroAutor({Key? key}):super(key:key);

  @override
  State<CadastroAutor> createState() =>_CadastroAutor();
}

class _CadastroAutor extends State<CadastroAutor> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerNacionalidade = TextEditingController();
  TextEditingController  _controllerPremiacao = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro do autor"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //---Campo Nome---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerNome,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(border: UnderlineInputBorder(),
                        labelText: "Informe o nome do autor(a)",
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                    ),
                  ),
                  //---Campo Nacionalidade---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerNacionalidade,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(border: UnderlineInputBorder(),
                        labelText: "País de origem",
                        prefixIcon: Icon(Icons.place),
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return "Campo obrigatório!";
                        }
                      },
                    ),
                  ),
                  //---Campo Premiação---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerPremiacao,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(border: UnderlineInputBorder(),
                        labelText: "Tem premiação?",
                        prefixIcon: Icon(Icons.emoji_events),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          print("Cadastrado com sucesso!");
                        }
                      },//onPressed
                      child: Text("Cadastrar")
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
