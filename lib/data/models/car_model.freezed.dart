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
      required String color,
      required String licenceNumber,
      required DateTime year}) {
    return _Car(
      uuid: uuid,
      type: type,
      brand: brand,
      isRegistered: isRegistered,
      color: color,
      licenceNumber: licenceNumber,
      year: year,
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
  String get color => throw _privateConstructorUsedError;
  String get licenceNumber => throw _privateConstructorUsedError;
  DateTime get year => throw _privateConstructorUsedError;

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
      String color,
      String licenceNumber,
      DateTime year});
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
    Object? color = freezed,
    Object? licenceNumber = freezed,
    Object? year = freezed,
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
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      licenceNumber: licenceNumber == freezed
          ? _value.licenceNumber
          : licenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      String color,
      String licenceNumber,
      DateTime year});
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
    Object? color = freezed,
    Object? licenceNumber = freezed,
    Object? year = freezed,
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
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      licenceNumber: licenceNumber == freezed
          ? _value.licenceNumber
          : licenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      required this.color,
      required this.licenceNumber,
      required this.year})
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
  final String color;
  @override
  final String licenceNumber;
  @override
  final DateTime year;

  @override
  String toString() {
    return 'Car(uuid: $uuid, type: $type, brand: $brand, isRegistered: $isRegistered, color: $color, licenceNumber: $licenceNumber, year: $year)';
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
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.licenceNumber, licenceNumber) &&
            const DeepCollectionEquality().equals(other.year, year));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(isRegistered),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(licenceNumber),
      const DeepCollectionEquality().hash(year));

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
      required String color,
      required String licenceNumber,
      required DateTime year}) = _$_Car;
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
  String get color;
  @override
  String get licenceNumber;
  @override
  DateTime get year;
  @override
  @JsonKey(ignore: true)
  _$CarCopyWith<_Car> get copyWith => throw _privateConstructorUsedError;
}
