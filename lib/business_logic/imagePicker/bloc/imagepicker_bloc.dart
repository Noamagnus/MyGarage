import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_garage/data/repositories/ImagePickerService.dart';

part 'imagepicker_event.dart';
part 'imagepicker_state.dart';
part 'imagepicker_bloc.freezed.dart';

class ImagepickerBloc extends Bloc<ImagepickerEvent, ImagepickerState> {
  final ImagePickerService imagePickerService;

  ImagepickerBloc(this.imagePickerService) : super(const Initial()) {
    on<TakePicture>((event, emit) async {
      final imageUrl = await imagePickerService.takePicture(ImageSource.camera);
      emit(ImagepickerState.fulfilled(imageUrl));
    });
    on<PickFromGallery>((event, emit) async {
      final imageUrl = await imagePickerService.takePicture(ImageSource.gallery);
      emit(ImagepickerState.fulfilled(imageUrl));
    });
    on<ClearPhoto>((event, emit) async {
      emit(const ImagepickerState.initial());
    });
  }
}
