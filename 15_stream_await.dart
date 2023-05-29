void main(){
  
  emitNumbers().listen( (value) {
    print(value);
  });
  
}

// el async* siempre va a retornar un Stream
Stream<int> emitNumbers() async*{
  
  final valuesToEmit = [0,1,2,3,4,5];
  
  for(int i in valuesToEmit){
    await Future.delayed( const Duration(seconds:1));
    // el yield es como un return,pero volviendo a esta ejecución.
    // es como decir toma este valor y ahora te doy otro.
    yield i;
  }
  
}