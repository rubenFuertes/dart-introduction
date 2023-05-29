// Para poder usar el await necesitamos que la función sea async
void main() async {
  
  print('Inicio del programa');
  
  //Con el await conseguimos que la ejecución del programa espere
  //a que vuelva el resultado y se siga ejecutando secuencialmente.
  try{
    final value = await httpGet('http://prueba');
    print(value);
  }catch(err){
    print('Error: $err');
  }
  
  print('Fin del programa');
  
}

// Para poder usar el await necesitamos que la función sea async
Future<String> httpGet ( String url ) async{
  
  // Con el await conseguimos que espere el segundo y devuelve el resultado
  await Future.delayed( const Duration( seconds: 2 ));
  
  //Descomentar para probar el manejo de excepciones
  //throw 'Error en la petición HTTP';
  
  return 'Respuesta de la petición HTTP';
  
}