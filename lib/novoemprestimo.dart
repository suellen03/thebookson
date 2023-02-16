import 'package:flutter/material.dart';

class NovoEmprestimo extends StatefulWidget {
  const NovoEmprestimo({Key? key}) : super(key: key);

  @override
  State<NovoEmprestimo> createState() => _NovoEmprestimoState();
}

class _NovoEmprestimoState extends State<NovoEmprestimo> {
  TextEditingController _controllerdataretirada = TextEditingController();
  TextEditingController _controllerdatadevolucao = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Empréstimo"),
        backgroundColor: const Color(0xff620a03),
      ),

      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerdataretirada,
                        keyboardType: TextInputType.datetime,
                        validator: (value){
                          if (value!.isEmpty){
                            return "Campo obrigatório";
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: "Data de Retirada:",
                          prefixIcon: Icon(Icons.calendar_month),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
                      child: TextFormField(
                        controller: _controllerdatadevolucao,
                        keyboardType: TextInputType.datetime,
                        validator: (value){
                          if (value!.isEmpty){
                            return "Campo obrigatório";
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: "Data de Devolução:",
                          prefixIcon: Icon(Icons.calendar_month),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: const Text("Cadastrar"
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {

                          print("passei aqui");
                        }
                      },
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