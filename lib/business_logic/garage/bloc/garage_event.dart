part of 'garage_bloc.dart';

@freezed
class GarageEvent with _$GarageEvent {
  const factory GarageEvent.started() = Started;
  const factory GarageEvent.loadCarsList({List<Car>? listOfCars}) = LoadCarsList;
  const factory GarageEvent.addCarToGarage(Car car) = AddCarToGarage;
  const factory GarageEvent.removeCarFromGarage(Car car) = RemoveCarFromGarage;
}