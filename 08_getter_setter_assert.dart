void main(){
  
  final mySquare = Square ( side : -10 );
  
  mySquare.side = 5;
  
  print('area:${mySquare.area}');
}

class Square {
  
  //para hacer que sea private le ponemos la barra baja _
  double _side;
  
  Square({required side})
    : assert(side >= 0, 'side must be >=0'),
      this._side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side (double value){
    print('Setting new value $value');
    if(value < 0) throw 'Value must be >0';
    
    this._side=value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}