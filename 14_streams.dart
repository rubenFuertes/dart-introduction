void main(){
  
  //Si no hay nadie escuchando, aunque se llame al Stream no va a pasar nada
  emitNumbers().listen( (value) {
    
    print(value);
    
  });
  
}

Stream<int> emitNumbers() {
  
  return Stream.periodic(const Duration(seconds : 1), (int value){
    return value;
  }).take(10); // le decimos que haga 10 emisiones y pare
  
}