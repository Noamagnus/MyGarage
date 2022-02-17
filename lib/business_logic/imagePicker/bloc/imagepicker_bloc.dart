import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_garage/data/repositories/ImagePickerService.dart';

part 'imagepicker_event.dart';
part 'imagepicker_state.dart';
part 'imagepicker_bloc.freezed.dart';

class ImagepickerBloc extends Bloc<ImagepickerEvent, ImagepickerState> {
  final ImagePickerService imagePickerService;

  ImagepickerBloc(this.imagePickerService) : super(Initial()) {
    on<ImagepickerEvent>((event, emit) async {
      final imageUrl = await imagePickerService.takePicture();
      emit(ImagepickerState.fulfilled(imageUrl));
    });
  }
}
