void main(){
  
  print('Inicio del programa');
  
  httpGet('http://prueba')
  .then( (value) {
    print(value);
  }).catchError( (err){
    print('Error: $err');
  });
  
  print('Fin del programa');
  
}

Future<String> httpGet ( String url ){
  
  return Future.delayed( const Duration( seconds: 2 ), () {
    
    //Descomentar para probar el manejo de excepciones
    //throw 'Hubo un problema en la petición';
    
    return 'Respuesta de la petición HTTP';
  });
  
}