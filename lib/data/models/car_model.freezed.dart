// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
class _$CarTearOff {
  const _$CarTearOff();

  _Car call(
      {required String uuid,
      required CarType type,
      required String brand,
      required bool isRegistered,
      required String description,
      required String licenceNumber,
      required DateTime year,
      required String imageUrl}) {
    return _Car(
      uuid: uuid,
      type: type,
      brand: brand,
      isRegistered: isRegistered,
      description: description,
      licenceNumber: licenceNumber,
      year: year,
      imageUrl: imageUrl,
    );
  }

  Car fromJson(Map<String, Object?> json) {
    return Car.fromJson(json);
  }
}

/// @nodoc
const $Car = _$CarTearOff();

/// @nodoc
mixin _$Car {
  String get uuid => throw _privateConstructorUsedError;
  CarType get type => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  bool get isRegistered => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get licenceNumber => throw _privateConstructorUsedError;
  DateTime get year => throw _privateConstructorUsedError; // year manufactured
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      CarType type,
      String brand,
      bool isRegistered,
      String description,
      String licenceNumber,
      DateTime year,
      String imageUrl});
}

/// @nodoc
class _$CarCopyWithImpl<$Res> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  final Car _value;
  // ignore: unused_field
  final $Res Function(Car) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? type = freezed,
    Object? brand = freezed,
    Object? isRegistered = freezed,
    Object? description = freezed,
    Object? licenceNumber = freezed,
    Object? year = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CarType,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistered: isRegistered == freezed
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      licenceNumber: licenceNumber == freezed
          ? _value.licenceNumber
          : licenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$CarCopyWith(_Car value, $Res Function(_Car) then) =
      __$CarCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      CarType type,
      String brand,
      bool isRegistered,
      String description,
      String licenceNumber,
      DateTime year,
      String imageUrl});
}

/// @nodoc
class __$CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res>
    implements _$CarCopyWith<$Res> {
  __$CarCopyWithImpl(_Car _value, $Res Function(_Car) _then)
      : super(_value, (v) => _then(v as _Car));

  @override
  _Car get _value => super._value as _Car;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? type = freezed,
    Object? brand = freezed,
    Object? isRegistered = freezed,
    Object? description = freezed,
    Object? licenceNumber = freezed,
    Object? year = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Car(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CarType,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistered: isRegistered == freezed
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      licenceNumber: licenceNumber == freezed
          ? _value.licenceNumber
          : licenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car extends _Car {
  const _$_Car(
      {required this.uuid,
      required this.type,
      required this.brand,
      required this.isRegistered,
      required this.description,
      required this.licenceNumber,
      required this.year,
      required this.imageUrl})
      : super._();

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @override
  final String uuid;
  @override
  final CarType type;
  @override
  final String brand;
  @override
  final bool isRegistered;
  @override
  final String description;
  @override
  final String licenceNumber;
  @override
  final DateTime year;
  @override // year manufactured
  final String imageUrl;

  @override
  String toString() {
    return 'Car(uuid: $uuid, type: $type, brand: $brand, isRegistered: $isRegistered, description: $description, licenceNumber: $licenceNumber, year: $year, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Car &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.isRegistered, isRegistered) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.licenceNumber, licenceNumber) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(isRegistered),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(licenceNumber),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$CarCopyWith<_Car> get copyWith =>
      __$CarCopyWithImpl<_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(this);
  }
}

abstract class _Car extends Car {
  const factory _Car(
      {required String uuid,
      required CarType type,
      required String brand,
      required bool isRegistered,
      required String description,
      required String licenceNumber,
      required DateTime year,
      required String imageUrl}) = _$_Car;
  const _Car._() : super._();

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  String get uuid;
  @override
  CarType get type;
  @override
  String get brand;
  @override
  bool get isRegistered;
  @override
  String get description;
  @override
  String get licenceNumber;
  @override
  DateTime get year;
  @override // year manufactured
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$CarCopyWith<_Car> get copyWith => throw _privateConstructorUsedError;
}
