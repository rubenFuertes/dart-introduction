abstract class Animal {}

// al extender todas las propiedades de animal van a ser transferidas.
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin class Volador{
  void volar() => print('Estoy volando');
}

mixin class Caminante{
  void caminar() => print('Estoy caminando');
}

mixin class Nadador{
  void nadar() => print('Estoy nadando');
}

// Mixins : con el with añadimos la especialización
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante,Volador{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante,Volador{}
class Pato extends Ave with Caminante,Volador,Nadador{}

class Tiburon with Nadador{}
class PezVolador with Nadador,Volador{}

void main(){
  final flipper = new Delfin();
  flipper.nadar();
  
  final batman = new Murcielago();
  batman.caminar();
  batman.volar();
  
  final pato = new Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
}


