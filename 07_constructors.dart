void main(){
  
  final Map<String,dynamic> rawJson = {
    'name' : 'Tony Stark',
    'power' : 'Money',
    'isAlive' : true
  };
  
  // crear un objeto con la variables de un JSON
  /*final Hero wolverine = new Hero(
    name : rawJson['name'] ?? 'Logan', 
    power : rawJson['power'] ?? 'Regeneration', 
    isAlive: rawJson['isAlive'] ?? true
  );*/
  
  //crear un objeto pasando directamente el JSON
  final Hero ironman = new Hero.fromJson(rawJson);
  
  
  
  print(ironman);
  print(ironman.name);
  print(ironman.power);
  print(ironman.isAlive);
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json) 
    : this.name = json['name'] ?? 'No name found',
      this.power = json['power'] ?? 'No power found',
      this.isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString(){
    return '$name - $power - ${ isAlive ? 'YES' : 'NOPE' }';
  }
  
}