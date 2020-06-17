import 'package:flutter/material.dart';
import 'package:projeto_prova/model/docente.dart';

class LoginDocente extends StatefulWidget {
  LoginDocente({Key key}) : super(key: key);

  @override
  _LoginDocenteState createState() => _LoginDocenteState();
}

class _LoginDocenteState extends State<LoginDocente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autocorrect: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.black, fontSize: 25),
                decoration: InputDecoration(
                    labelText: "Matrícula",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              TextFormField(
                autocorrect: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 25),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/TelaPrincipal'),
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,),
                  ),
                  color: Colors.blue,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                        child: Text("Cadastrar",
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                        onTap: () {
                          Navigator.pushNamed(context, '/TelaCadastro');
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
