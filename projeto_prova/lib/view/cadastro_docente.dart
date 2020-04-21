import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
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
  final format = DateFormat("dd-MM-yyyy");

  bool _masc = false;
  bool _fem = false;
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
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
                  child: Row(
                    children: <Widget>[
                      Text('Masculino'),
                      Checkbox(
                        onChanged: (bool resp) {
                          setState(() {
                            _masc = resp;
                            _fem = false;
                          });
                        },
                        value: _masc,
                      ),
                      Text('Feminino'),
                      Checkbox(
                        onChanged: (bool resp) {
                          setState(() {
                            _fem = resp;
                            _masc = false;
                          });
                        },
                        value: _fem,
                      ),
                    ],
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Esse espaço não pode ficar vazio";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Data de Nascimento'),
                      DateTimeField(
                        format: format,
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100));
                        },
                      ),
                    ],
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
        }));
  }
}
