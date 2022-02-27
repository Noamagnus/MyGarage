part of 'vehicle_details_bloc.dart';

@freezed
class VehicleDetailsEvent with _$VehicleDetailsEvent {
  const factory VehicleDetailsEvent.showCarDetails(Car car) = ShowCarDetails;
}
