part of 'vehicle_details_bloc.dart';

@freezed
class VehicleDetailsState with _$VehicleDetailsState {
  const factory VehicleDetailsState.initial() = Initial;
    const factory VehicleDetailsState.loaded(Car car) = Loaded;
}
