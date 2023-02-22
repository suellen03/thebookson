import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),

                    //Campo Email
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerEmail,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.length <5) {
                            return("Este email é muito curto");
                          }
                          else if (!value.contains("@")) {
                            return "Este e-mail não é valido";
                          }
                          else if (value.contains("." ",")) {
                            return "Este e-mail não é valido";
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "email",
                            prefixIcon: Icon(Icons.account_box_sharp)
                        ),
                      ),
                    ),
                    //Campo Senha
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerPassword,
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        validator: (value) {
                          if (value!.length !=6) {
                            return("A senha deverá ter 6 digitos");
                          }

                        },
                        decoration: InputDecoration(
                          labelText: "senha",
                          prefixIcon: Icon(Icons.lock_person_sharp),
                        ),
                      ),
                    ),

                    //Botão Entrar
                    ElevatedButton(onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        print("Entrou");
                      }
                    },
                        child: Text("Entrar")
                    ),

                    //Botão Cadastrar
                    OutlinedButton(onPressed: (){}, child:
                    Text("Cadastra-se"),
                    ),

                    TextButton(onPressed: (){}, child:
                    Text("Esqueceu a Senha?")),

                  ],
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
