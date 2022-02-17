part of 'garage_bloc.dart';

@freezed
class GarageState with _$GarageState {
  const factory GarageState.initial() = Initial;
  const factory GarageState.garageLoadingState() = GarageLoadingState;
  const factory GarageState.garageLoadedState(List<Car> cars) = GarageLoadedState;
  const factory GarageState.garageErrorState(String error) = GarageErrorState;
}
