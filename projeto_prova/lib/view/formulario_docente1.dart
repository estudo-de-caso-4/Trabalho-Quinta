import 'package:flutter/material.dart';
import 'package:projeto_prova/services/service_bd.dart';

class FormularioDocente1 extends StatefulWidget {
  FormularioDocente1({Key key}) : super(key: key);

  @override
  _FormularioDocente1State createState() => _FormularioDocente1State();
}

class _FormularioDocente1State extends State<FormularioDocente1> {
  final _formKey = GlobalKey<FormState>();
  SQLiteService sqLiteService;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Protocolo 1ª parte"),
        ),
        body: Builder(builder: (BuildContext context) {
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Text('Justificativa:'),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 300.0,
                          ),
                          child: new Scrollbar(
                            child: new SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              reverse: true,
                              child: new TextField(
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Text('Resumo: '),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 300.0,
                          ),
                          child: new Scrollbar(
                            child: new SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              reverse: true,
                              child: new TextField(
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Text('Resumo em Inglês:'),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 300.0,
                          ),
                          child: new Scrollbar(
                            child: new SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              reverse: true,
                              child: new TextField(
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                RaisedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/TelaFormulario2'),
                  },
                  child: Text('Continuar'),
                ),
              ],
            ),
          );
        }));
  }
}
