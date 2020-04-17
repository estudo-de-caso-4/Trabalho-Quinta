// Tirar esse abstract
abstract class Docente {
  String nome;
  int matricula;

  preencherFormulario();
  emitirFormulario();
  Docente(this.nome, this.matricula);
}