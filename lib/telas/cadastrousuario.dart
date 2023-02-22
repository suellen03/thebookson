import 'package:flutter/material.dart';

class CadastrUsuario extends StatefulWidget {
  const CadastrUsuario({Key? key}) : super(key: key);

  @override
  State<CadastrUsuario> createState() => _CadastrUsuarioState();
}

class _CadastrUsuarioState extends State<CadastrUsuario> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerDataNascimento = TextEditingController();
  TextEditingController _controllerCpf = TextEditingController();
  TextEditingController _controllerFone = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerTipoUsuario= TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Cadastro de usuário"),
      ),
      body:
      Container(
        padding: EdgeInsets.all(16),
        child: Center(
            child:SingleChildScrollView(
              child: Form(
                key: _formKey,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    // -------Campo Nome -----
                    Padding(
                      padding:EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller:_controllerNome ,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Nome:',
                            prefixIcon: Icon(Icons.person)

                        ),
                      ),
                    ),

                    //-----Campo Data de nascimento ------
                    Padding(
                      padding:EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller:_controllerDataNascimento ,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Data de nascimento:',
                            prefixIcon: Icon(Icons.calendar_month)
                        ),
                      ),
                    ),

                    // ------Campo cpf---
                    Padding(
                      padding:EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                          controller:_controllerCpf ,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Cpf:',
                              prefixIcon: Icon(Icons.assessment)
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.length != 11) {
                              return "Faltou dígitos para esse CPF";
                            }
                          }
                      ),
                    ),

                    // ------Campo Fone---
                    Padding(
                      padding:EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller:_controllerFone ,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Fone:',
                            prefixIcon: Icon(Icons.phone)
                        ),
                      ),
                    ),

                    // ------Campo e-mail ---
                    Padding(
                      padding:EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller:_controllerEmail ,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'E-mail:',
                            prefixIcon: Icon(Icons.alternate_email)
                        ),
                        validator: (value) {
                          if (value!.length < 5 ){
                            return "Este e-mail parece curto demais";
                          }
                          else if (!value.contains("@")){
                            return "Este e-mail não é válido ";
                          }
                        },
                      ),
                    ),


                    // ------Campo Tipo de usuario---
                    Padding(
                      padding:EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller:_controllerTipoUsuario ,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Tipo de usuário:',
                            prefixIcon: Icon(Icons.check )
                        ),
                      ),
                    ),
                    ElevatedButton(

                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            print("Entrou");

                          }

                        },
                        child: Text('Cadastrar',style: TextStyle(fontSize: 20),)
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
