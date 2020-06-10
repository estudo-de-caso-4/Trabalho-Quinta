class Animal{
  final int id;
  final String especie;
  final String areaBioterio;

  Animal(this.especie, this.areaBioterio, this.id);
  
  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'especie': especie,
      'areaBioteiro': areaBioterio,
    };
  }
}