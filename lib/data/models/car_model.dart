import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class Car with _$Car {
  const Car._();
  const factory Car({
    required String uuid,
    required CarType type,
    required String brand,
    required bool isRegistered,
    required String description,
    required String licenceNumber,
    required DateTime year, // year manufactured
    required String imageUrl, // year manufactured
  }) = _Car;
  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}

enum CarType {
  micro,
  sedan,
  cuv,
  suv,
  hatchback,
  roadster,
  pickup,
  van,
  coupe,
  superCar,
  camperVan,
  cabriolet,
  miniVan,
}
