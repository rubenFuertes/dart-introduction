void main(){
  
  final windPlant = new WindPlant( initialEnergy : 100 );
  final nuclearPlant = new NuclearPlant( energyLeft : 1000 );
  
  print('wind energy level: ${chargePhone(windPlant)}');
  print('nuclear energy level: ${chargePhone(nuclearPlant)}');
  
}

double chargePhone( EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear, wind, water
}

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; 
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
    });
  
  void consumeEnery( double amount );
  
}

// Extends
class WindPlant extends EnergyPlant{
  
  WindPlant({required double initialEnergy})
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnery( double amount ){
    energyLeft -= amount;
  }
  
}

// Implements
class NuclearPlant implements EnergyPlant{
 
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnery( double amount ){
    energyLeft -= (amount*0.5);
  }
  
}