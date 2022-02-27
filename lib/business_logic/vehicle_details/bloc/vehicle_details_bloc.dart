import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_garage/data/models/car_model.dart';

part 'vehicle_details_event.dart';
part 'vehicle_details_state.dart';
part 'vehicle_details_bloc.freezed.dart';

class VehicleDetailsBloc extends Bloc<VehicleDetailsEvent, VehicleDetailsState> {
  VehicleDetailsBloc() : super(const Initial()) {
    on<ShowCarDetails>((event, emit) async {
      emit(VehicleDetailsState.loaded(event.car));
    });
    
  }
}
