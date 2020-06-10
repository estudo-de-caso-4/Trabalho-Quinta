class Docente {
  final int id;
  final String nome;
  final int matricula;
  final String senha;
  final String dnasc;

  //preencherFormulario();
  //emitirFormulario();

  Docente(this.id, this.nome, this.matricula, this.senha, this.dnasc);

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'nome': nome,
      'matricula': matricula,
      'senha': senha,
      'dnasc':dnasc
    };
  }
}