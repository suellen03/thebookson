import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {

  TextEditingController _controllerEmail = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperar Senha"),
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
                  // --- Campo email ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.length < 5){
                          return "Email curto demais";
                        }
                        else if (!value.contains("@")) {
                          return "Email inválido";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.alternate_email),
                        labelStyle: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  // --- Button ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: ElevatedButton(
                      child: Text(
                        "Enviar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Entrou");
                        }
                      },
                    ),
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

