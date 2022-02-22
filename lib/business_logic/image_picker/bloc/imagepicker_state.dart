part of 'imagepicker_bloc.dart';

@freezed
class ImagepickerState with _$ImagepickerState {
  const factory ImagepickerState.initial() = Initial;
  const factory ImagepickerState.fulfilled(String? imageUrl) = Fulfilled;
  const factory ImagepickerState.error(String error) = Error;

}
