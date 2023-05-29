void main(){
  
  final number = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original $number');
  print('Length ${number.length}');
  print('Index 0 ${number[0]}');
  print('First ${number.first}');
  print('Last ${number.last}');
  
  // vamos a generar un Iterable para poder recorrerlo
  final reversedNumber = number.reversed;
  print('Iterable: $reversedNumber');
  // podemos recuperar un List de nuestro Iterable
  print('List: ${reversedNumber.toList()}');
  // también podemo recuperar un Set ( Lista en la cual no se pueden repetir sus valores)
  print('Set: ${reversedNumber.toSet()}');
  
  // where nos permite hacer filtrados dentro de listados
  final numberGratherThan5 = number.where( (int num) {
    // La condición ha de devolver true para que el dato siga en el listado.
    // False para sacarlo del listado
    return num > 5; // true
  });
  print('>5 Iterable: $numberGratherThan5');
  print('>5 Set: ${numberGratherThan5.toSet()}');
  
}