void main(){
  
  // Invocar Formas 1 y 2
  //final Hero wolverine = new Hero('Logan', 'Regeneration');
  //Invocar forma 3 
  final Hero wolverine = new Hero(name : 'Logan', power : 'Regeneration');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero {
  
  String name;
  String power;
  
  // Forma 1 de hacer constructores
  /*Hero(String pName, String pPower)
    : this.name = pName,
      this.power = pPower;
   */
  
  // Forma 2 de hacer constructores
  //Hero(this.name, this.power);
  
  // Forma 3 con required
  Hero({
    required this.name,
    required this.power
  });
  
  //No es obligatorio el override pero es buena practica
  @override
  String toString(){
    return '$name - $power';
  }
  
}