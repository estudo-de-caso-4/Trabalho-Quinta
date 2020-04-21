import 'package:flutter/material.dart';

class FormularioDocente2 extends StatefulWidget {
  FormularioDocente2({Key key}) : super(key: key);

  @override
  _FormularioDocente2State createState() => _FormularioDocente2State();
}

class _FormularioDocente2State extends State<FormularioDocente2> {
  final _formKey = GlobalKey<FormState>();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();
  final _textController6 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Protocolo"),
        ),
        body: Builder(builder: (BuildContext context) {
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController3,
                    decoration: InputDecoration(
                      labelText: "Data inicio",
                      suffixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com data incio";
                      }
                      return null;
                    },
                  ),
                ),
                Divider(),
            
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController4,
                    decoration: InputDecoration(
                      labelText: "Data fim",
                      suffixIcon: Icon(Icons.today),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com data de entrega";
                      }
                      return null;
                    },
                  ),
                ),
                Divider(),
          
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController5,
                    decoration: InputDecoration(
                      labelText: "Animal a ser usado",
                      suffixIcon: Icon(Icons.pets),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "entre com especie tipo de animal";
                      }
                      return null;
                    },
                  ),
                ),
                Divider(),
                Divider(),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController6,
                    decoration: InputDecoration(
                      labelText: "Biotério",
                      suffixIcon: Icon(Icons.vignette),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com local onde animais a serem conservado";
                      }
                      return null;
                    },
                  ),
                ),
                
                Divider(),
                Divider(),
                Divider(),
                RaisedButton(
                    child: Text("Emitir"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Protocolo emitido'),
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