import 'package:flutter/material.dart';
import 'package:projeto_prova/view/cadastro_docente.dart';
import 'package:projeto_prova/view/formulario_docente1.dart';
import 'package:projeto_prova/view/formulario_docente2.dart';
import 'package:projeto_prova/view/login_docente.dart';
import 'package:projeto_prova/view/tela_principal.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
        '/': (context) => LoginDocente(),
        '/TelaCadastro': (context) => CadastroDocente(),
        '/TelaPrincipal': (context) => TelaPrincipal(),
        '/TelaFormulario1': (context) => FormularioDocente1(),
        '/TelaFormulario2': (context) => FormularioDocente2(),
      },
    );
  }
}