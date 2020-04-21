import 'package:flutter/material.dart';
import 'package:projeto_prova/view/login_docente.dart';

class CadastroDocente extends StatefulWidget {
  CadastroDocente({Key key}) : super(key: key);

  @override
  _CadastroDocenteState createState() => _CadastroDocenteState();
}

class _CadastroDocenteState extends State<CadastroDocente> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
        ),
        body: Builder(builder: (BuildContext context) {
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                      labelText: "Nome Completo",
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com o nome";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController1,
                    decoration: InputDecoration(
                      labelText: "Sua Matrícula",
                      suffixIcon: Icon(Icons.dvr),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com a sua matrícula";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController2,
                    decoration: InputDecoration(
                      labelText: "Crie sua Senha",
                      suffixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Esse espaço não pode ficar vazio";
                      }
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                    child: Text("Cadastrar"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Conta Criada'),
                        ));
                      }
                    })
              ],
            ),
          );
        })
        
        );
  }
}