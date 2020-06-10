class Docente {
  final int id;
  final String nome;
  final int matricula;
  final String senha;
  final String dnasc;

  //preencherFormulario();
  final String just;
  final String resum;
  final String resumEn;
  final String dataIni;
  final String dataFim;
  //emitirFormulario();

  Docente(this.id, this.nome, this.matricula, this.senha, this.dnasc, this.just, this.resum, this.resumEn, this.dataIni, this.dataFim);

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'nome': nome,
      'matricula': matricula,
      'senha': senha,
      'dnasc':dnasc,
      'justificativa': just,
      'resumo': resum,
      'resumoInglês':resumEn,
      'dIni': dataIni,
      'dFim': dataFim,
    };
  }
}