import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({Key key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tela Principal'),
        ),
        body: Padding(
          padding: EdgeInsets.all(100),
            child: Column(
            children: <Widget>[
            ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/TelaFormulario1'),
                  },
                  child: Text(
                    'Criar Formulario',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,),
                  ),
                  color: Colors.blue,
                ),
              ),
              Divider(),Divider(),Divider(),Divider(),Divider(),
              Text('Situação dos Formulários:',
                style: TextStyle(fontSize: 16),
              ),
              Divider(),
              Container(
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow( children: [
                    Column(children:[
                      Text('Formulario 1')
                    ]),
                    Column(children:[
                      Text('Aprovado')
                    ]),
                  ]),
                  TableRow( children: [
                    Column(children:[
                      Text('Formulario 2')
                    ]),
                    Column(children:[
                      Text('Em análise')
                    ]),
                  ]),
                  TableRow( children: [
                    Column(children:[
                      Text('Formulario 3')
                    ]),
                    Column(children:[
                      Text('Negado')
                    ]),
                  ]),
                ],
              ),
            ),
          ], 
          ),
        ),
      ),
    );
  }
}
