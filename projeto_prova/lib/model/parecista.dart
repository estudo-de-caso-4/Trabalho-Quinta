class Parecista {
  final String nome;
  final String matricula;

  //descreverParecer();
  //recomendar();
  Parecista({this.nome, this.matricula});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'matricula': matricula,
    };
  }
}
