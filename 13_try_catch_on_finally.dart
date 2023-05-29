// Para poder usar el await necesitamos que la función sea async
void main() async {
  
  print('Inicio del programa');
  
  //Con el await conseguimos que la ejecución del programa espere
  //a que vuelva el resultado y se siga ejecutando secuencialmente.
  try{
    final value = await httpGet('http://prueba');
    print(value);
  //Con el on capturamos por tipo especifico de excepción
  }on Exception catch(err){
   print(err); 
  //Este capturaría todas aquellas excepciones NO manejadas con el ON
  }catch(err){
    print(err);
  }finally{
    print('Este es el finally del try catch y se ejecuta siempre pase lo que pase');
  }
  
  print('Fin del programa');
  
}

// Para poder usar el await necesitamos que la función sea async
Future<String> httpGet ( String url ) async{
  
  // Con el await conseguimos que espere el segundo y devuelve el resultado
  await Future.delayed( const Duration( seconds: 2 ));
  
  //Descomentar para probar el manejo de excepciones
  //throw 'Error NO CONTROLADO en la petición HTTP';
  throw new Exception('Exception Controlada en la petición HTTP');
  
  return 'Respuesta de la petición HTTP';
  
}