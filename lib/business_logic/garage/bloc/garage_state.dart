part of 'garage_bloc.dart';

@freezed
class GarageState with _$GarageState {
  const factory GarageState.initial() = Initial;
  const factory GarageState.loading() = GarageLoadingState;
  const factory GarageState.loaded(List<Car> cars) = GarageLoadedState;
  const factory GarageState.error(String error) = GarageErrorState;
}
