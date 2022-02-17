part of 'imagepicker_bloc.dart';

@freezed
class ImagepickerEvent with _$ImagepickerEvent {
  const factory ImagepickerEvent.started() = Started;
  const factory ImagepickerEvent.takePicture() = TakePicture;
}