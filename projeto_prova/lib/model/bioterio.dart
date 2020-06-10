class Bioterio{
  final String areaBioterio;

  Bioterio(this.areaBioterio);

  Map<String, dynamic> toMap(){
    return{
      'areaBioteiro': areaBioterio
    };
  }
}