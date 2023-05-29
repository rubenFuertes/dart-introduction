void main(){
  
  print(hiEveryone());
  print('Suma: ${sum(2,2)}');
  print('Suma: ${sumOptional(2)}');
  print(saludo( name: 'Rubén'));
  print(saludo( name: 'Rubén', message: 'Hi'));
  
}

//funciones flecha
String hiEveryone() => 'Hello Everyone';
int sum (int a, int b) => a+b;

//funciones normales
/*Podemos decir que unos de los atributos es opcional, 
 * el b en este caso. Le damos un valor por defecto en caso de que no llegue
 */
int sumOptional (int a, [int b = 0]) {
  
  //Si en los atributos no damos valor por defecto podríamos usar
  //b = b ?? 0;
  //b ??= 0; // es lo mismo.
  
  return a+b;
}

/*Podemos meter {} para hacer opcionales los atributos
 * y si queremos hacer alguno obligatorio usamos required
 * También al llamar a la función veremos un poco distinta la invocación
 * Ejemplo : saludo( name: 'Rubén', message: 'Hi')
 */
String saludo ({required String name, String message = 'Hola'}){
  return '$message, $name';
}