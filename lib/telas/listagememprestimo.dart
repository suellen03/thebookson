import 'package:flutter/material.dart';
import 'package:thebookson/modelos/emprestimo.dart';

class ListagemEmprestimos extends StatefulWidget {
  const ListagemEmprestimos({Key? key}) : super(key: key);

  @override
  State<ListagemEmprestimos> createState() => _ListagemEmprestimosState();
}

class _ListagemEmprestimosState extends State<ListagemEmprestimos> {
  @override
  List<Emprestimo> listaEmprestimo = [
    Emprestimo.dataretirada("2023-02-22"),
    Emprestimo.dataretirada("2023-02-22"),
    Emprestimo.dataretirada("2023-02-22"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem de Empréstimos"),
      ),
      body: Container(
        padding:  EdgeInsets.all(16),
        child:  Center(
          child: SingleChildScrollView(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: listaEmprestimo.length,
                itemBuilder: (_, index){
              return ListTile(
                title: Text(listaEmprestimo[index].dataretirada),
              );
            }),
          ),
        ),
      ),
    );
  }
}

