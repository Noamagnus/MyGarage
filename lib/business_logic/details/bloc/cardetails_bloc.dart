import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cardetails_event.dart';
part 'cardetails_state.dart';
part 'cardetails_bloc.freezed.dart';

class CardetailsBloc extends Bloc<CardetailsEvent, CardetailsState> {
  CardetailsBloc() : super(_Initial()) {
    on<CardetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
