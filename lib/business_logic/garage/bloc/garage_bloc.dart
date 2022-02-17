import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/data/repositories/GarageService.dart';

part 'garage_event.dart';
part 'garage_state.dart';
part 'garage_bloc.freezed.dart';

class GarageBloc extends Bloc<GarageEvent, GarageState> {
  final GarageService garageService;
  GarageBloc(this.garageService) : super(const Initial()) {
    // on<Started>((event, emit) async {
    //   emit(const GarageState.garageLoadingState());
    //   final cars = await garageService.getAllCarsFuture();
    //   emit(GarageState.garageLoadedState(cars));
    // });
    // on<LoadCarsList>((event, emit) async {
    //   emit(const GarageState.garageLoadingState());
    //   final cars = await garageService.getAllCarsFuture();
    //   emit(GarageState.garageLoadedState(cars));
    // });
    on<LoadCarsList>((event, emit) async {
      emit(const GarageState.garageLoadingState());
      await emit.forEach<List<Car>>(
        garageService.getAllCarsSteams(),
        onData: (list) => GarageState.garageLoadedState(list),
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
//  Future<void> _onSubscriptionRequested(
//     TodosOverviewSubscriptionRequested event,
//     Emitter<TodosOverviewState> emit,
//   ) async {
//     emit(state.copyWith(status: () => TodosOverviewStatus.loading));

//     await emit.forEach<List<Todo>>(
//       _todosRepository.getTodos(),
//       onData: (todos) => state.copyWith(
//         status: () => TodosOverviewStatus.success,
//         todos: () => todos,
//       ),
//       onError: (_, __) => state.copyWith(
//         status: () => TodosOverviewStatus.failure,
//       ),
//     );
//   }