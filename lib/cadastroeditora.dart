import 'package:flutter/material.dart';

class CadastroEditora extends StatefulWidget {
  const CadastroEditora ({Key? key}) : super(key: key);

  @override
  State<CadastroEditora> createState() => _CadastroEditoraState();
}

class _CadastroEditoraState extends State<CadastroEditora> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEstado = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Editora"),
        //backgroundColor: Colors.redAccent
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

                    //---------Campo Nome Editora ------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerNome,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Escreva o nome da Editora!";
                          }
                        },
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite o nome da Editora: ",
                          prefixIcon: Icon(Icons.business_sharp),
                        ),
                      ),
                    ),

                    //---------Campo Localização ------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerEstado,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite o Estado da Editora: ",
                          prefixIcon: Icon(Icons.place),
                        ),
                      ),
                    ),

                    //---------Campo Telefone ------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerTelefone,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite o telefone da Editora: ",
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),

                    //---------Campo E-mail ------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerEmail,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.length < 5) {
                            if (!value.contains("@")) {
                              return "Este e-mail não é válido!";
                            }
                            else {
                              return "Este e-mail parece curto demais";
                            }
                          }
                        },
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite o e-mail da Editora: ",
                          prefixIcon: Icon(Icons.alternate_email),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            print("Cadastrado com sucesso!");
                          }
                        },
                        child: const Text("Cadastrar"),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}