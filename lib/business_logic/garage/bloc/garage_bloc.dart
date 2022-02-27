import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/data/repositories/garage_service.dart';
import 'package:my_garage/data/repositories/image_picker_service.dart';

part 'garage_event.dart';
part 'garage_state.dart';
part 'garage_bloc.freezed.dart';

class GarageBloc extends Bloc<GarageEvent, GarageState> {
  final GarageService garageService;
  final ImagePickerService imagePickerService;
  GarageBloc(this.garageService, this.imagePickerService) : super(const Initial()) {
    on<LoadCarsList>((event, emit) async {
      emit(const GarageState.loading());
      await emit.forEach<List<Car>>(
        garageService.getAllCarsSteams(),
        onData: (list) {
          if (list.isEmpty) {
            return const GarageState.initial();
          } 
           return GarageState.loaded(list);
        },
        onError: (e, __) => GarageState.error(e.toString()),
      );
    });
    on<AddCarToGarage>((event, emit) async {
      await garageService.addNewCar(event.car);
    });
    on<RemoveCarFromGarage>((event, emit) async {
      await garageService.deleteCar(event.car);
    });
    
    
  }
}
