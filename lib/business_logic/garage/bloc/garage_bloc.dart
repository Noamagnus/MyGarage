import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/data/repositories/GarageService.dart';
import 'package:my_garage/data/repositories/ImagePickerService.dart';

part 'garage_event.dart';
part 'garage_state.dart';
part 'garage_bloc.freezed.dart';

class GarageBloc extends Bloc<GarageEvent, GarageState> {
  final GarageService garageService;
  final ImagePickerService imagePickerService;
  GarageBloc(this.garageService, this.imagePickerService) : super(const Initial()) {
    on<LoadCarsList>((event, emit) async {
      emit(const GarageState.garageLoadingState());
      await emit.forEach<List<Car>>(
        garageService.getAllCarsSteams(),
        onData: (list) {
          if (list.isEmpty) {
            return const GarageState.initial();
          } 
           return GarageState.garageLoadedState(list);
        },
        onError: (e, __) => GarageState.garageErrorState(e.toString()),
      );
    });
    on<AddCarToGarage>((event, emit) async {
      await garageService.addNewCar(event.car);
    });
    on<RemoveCarFromGarage>((event, emit) async {
      await garageService.deleteCar(event.car);
    });
    on<ShowCarDetails>((event, emit) async {
      /// Need to store selected car somewhere
    });
  }
}
