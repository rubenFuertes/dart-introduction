void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilites = ['Impostor','surf'];
  final sprites = ['ditto/front.png','ditto/back.png']; // diferente forma de definirlo, pero es lo mismo
  
  // dynamic puede ser cualquier tipo de dato
  dynamic errorMessage = 'Hola';
  // puedo darle un valor e ir cambiandolo sin problema
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilites
  $sprites
  $errorMessage
  """);
}