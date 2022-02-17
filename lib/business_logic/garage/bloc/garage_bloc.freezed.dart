// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'garage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GarageEventTearOff {
  const _$GarageEventTearOff();

  Started started() {
    return const Started();
  }

  LoadCarsList loadCarsList({List<Car>? listOfCars}) {
    return LoadCarsList(
      listOfCars: listOfCars,
    );
  }

  AddCarToGarage addCarToGarage(Car car) {
    return AddCarToGarage(
      car,
    );
  }

  RemoveCarFromGarage removeCarFromGarage(Car car) {
    return RemoveCarFromGarage(
      car,
    );
  }

  ShowCarDetails showCarDetails(Car car) {
    return ShowCarDetails(
      car,
    );
  }
}

/// @nodoc
const $GarageEvent = _$GarageEventTearOff();

/// @nodoc
mixin _$GarageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Car>? listOfCars) loadCarsList,
    required TResult Function(Car car) addCarToGarage,
    required TResult Function(Car car) removeCarFromGarage,
    required TResult Function(Car car) showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadCarsList value) loadCarsList,
    required TResult Function(AddCarToGarage value) addCarToGarage,
    required TResult Function(RemoveCarFromGarage value) removeCarFromGarage,
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageEventCopyWith<$Res> {
  factory $GarageEventCopyWith(
          GarageEvent value, $Res Function(GarageEvent) then) =
      _$GarageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GarageEventCopyWithImpl<$Res> implements $GarageEventCopyWith<$Res> {
  _$GarageEventCopyWithImpl(this._value, this._then);

  final GarageEvent _value;
  // ignore: unused_field
  final $Res Function(GarageEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$GarageEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'GarageEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Car>? listOfCars) loadCarsList,
    required TResult Function(Car car) addCarToGarage,
    required TResult Function(Car car) removeCarFromGarage,
    required TResult Function(Car car) showCarDetails,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadCarsList value) loadCarsList,
    required TResult Function(AddCarToGarage value) addCarToGarage,
    required TResult Function(RemoveCarFromGarage value) removeCarFromGarage,
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements GarageEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $LoadCarsListCopyWith<$Res> {
  factory $LoadCarsListCopyWith(
          LoadCarsList value, $Res Function(LoadCarsList) then) =
      _$LoadCarsListCopyWithImpl<$Res>;
  $Res call({List<Car>? listOfCars});
}

/// @nodoc
class _$LoadCarsListCopyWithImpl<$Res> extends _$GarageEventCopyWithImpl<$Res>
    implements $LoadCarsListCopyWith<$Res> {
  _$LoadCarsListCopyWithImpl(
      LoadCarsList _value, $Res Function(LoadCarsList) _then)
      : super(_value, (v) => _then(v as LoadCarsList));

  @override
  LoadCarsList get _value => super._value as LoadCarsList;

  @override
  $Res call({
    Object? listOfCars = freezed,
  }) {
    return _then(LoadCarsList(
      listOfCars: listOfCars == freezed
          ? _value.listOfCars
          : listOfCars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
    ));
  }
}

/// @nodoc

class _$LoadCarsList implements LoadCarsList {
  const _$LoadCarsList({this.listOfCars});

  @override
  final List<Car>? listOfCars;

  @override
  String toString() {
    return 'GarageEvent.loadCarsList(listOfCars: $listOfCars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadCarsList &&
            const DeepCollectionEquality()
                .equals(other.listOfCars, listOfCars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(listOfCars));

  @JsonKey(ignore: true)
  @override
  $LoadCarsListCopyWith<LoadCarsList> get copyWith =>
      _$LoadCarsListCopyWithImpl<LoadCarsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Car>? listOfCars) loadCarsList,
    required TResult Function(Car car) addCarToGarage,
    required TResult Function(Car car) removeCarFromGarage,
    required TResult Function(Car car) showCarDetails,
  }) {
    return loadCarsList(listOfCars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
  }) {
    return loadCarsList?.call(listOfCars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) {
    if (loadCarsList != null) {
      return loadCarsList(listOfCars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadCarsList value) loadCarsList,
    required TResult Function(AddCarToGarage value) addCarToGarage,
    required TResult Function(RemoveCarFromGarage value) removeCarFromGarage,
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) {
    return loadCarsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) {
    return loadCarsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) {
    if (loadCarsList != null) {
      return loadCarsList(this);
    }
    return orElse();
  }
}

abstract class LoadCarsList implements GarageEvent {
  const factory LoadCarsList({List<Car>? listOfCars}) = _$LoadCarsList;

  List<Car>? get listOfCars;
  @JsonKey(ignore: true)
  $LoadCarsListCopyWith<LoadCarsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCarToGarageCopyWith<$Res> {
  factory $AddCarToGarageCopyWith(
          AddCarToGarage value, $Res Function(AddCarToGarage) then) =
      _$AddCarToGarageCopyWithImpl<$Res>;
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$AddCarToGarageCopyWithImpl<$Res> extends _$GarageEventCopyWithImpl<$Res>
    implements $AddCarToGarageCopyWith<$Res> {
  _$AddCarToGarageCopyWithImpl(
      AddCarToGarage _value, $Res Function(AddCarToGarage) _then)
      : super(_value, (v) => _then(v as AddCarToGarage));

  @override
  AddCarToGarage get _value => super._value as AddCarToGarage;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(AddCarToGarage(
      car == freezed
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc

class _$AddCarToGarage implements AddCarToGarage {
  const _$AddCarToGarage(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'GarageEvent.addCarToGarage(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddCarToGarage &&
            const DeepCollectionEquality().equals(other.car, car));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(car));

  @JsonKey(ignore: true)
  @override
  $AddCarToGarageCopyWith<AddCarToGarage> get copyWith =>
      _$AddCarToGarageCopyWithImpl<AddCarToGarage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Car>? listOfCars) loadCarsList,
    required TResult Function(Car car) addCarToGarage,
    required TResult Function(Car car) removeCarFromGarage,
    required TResult Function(Car car) showCarDetails,
  }) {
    return addCarToGarage(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
  }) {
    return addCarToGarage?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) {
    if (addCarToGarage != null) {
      return addCarToGarage(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadCarsList value) loadCarsList,
    required TResult Function(AddCarToGarage value) addCarToGarage,
    required TResult Function(RemoveCarFromGarage value) removeCarFromGarage,
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) {
    return addCarToGarage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) {
    return addCarToGarage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) {
    if (addCarToGarage != null) {
      return addCarToGarage(this);
    }
    return orElse();
  }
}

abstract class AddCarToGarage implements GarageEvent {
  const factory AddCarToGarage(Car car) = _$AddCarToGarage;

  Car get car;
  @JsonKey(ignore: true)
  $AddCarToGarageCopyWith<AddCarToGarage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveCarFromGarageCopyWith<$Res> {
  factory $RemoveCarFromGarageCopyWith(
          RemoveCarFromGarage value, $Res Function(RemoveCarFromGarage) then) =
      _$RemoveCarFromGarageCopyWithImpl<$Res>;
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$RemoveCarFromGarageCopyWithImpl<$Res>
    extends _$GarageEventCopyWithImpl<$Res>
    implements $RemoveCarFromGarageCopyWith<$Res> {
  _$RemoveCarFromGarageCopyWithImpl(
      RemoveCarFromGarage _value, $Res Function(RemoveCarFromGarage) _then)
      : super(_value, (v) => _then(v as RemoveCarFromGarage));

  @override
  RemoveCarFromGarage get _value => super._value as RemoveCarFromGarage;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(RemoveCarFromGarage(
      car == freezed
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc

class _$RemoveCarFromGarage implements RemoveCarFromGarage {
  const _$RemoveCarFromGarage(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'GarageEvent.removeCarFromGarage(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveCarFromGarage &&
            const DeepCollectionEquality().equals(other.car, car));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(car));

  @JsonKey(ignore: true)
  @override
  $RemoveCarFromGarageCopyWith<RemoveCarFromGarage> get copyWith =>
      _$RemoveCarFromGarageCopyWithImpl<RemoveCarFromGarage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Car>? listOfCars) loadCarsList,
    required TResult Function(Car car) addCarToGarage,
    required TResult Function(Car car) removeCarFromGarage,
    required TResult Function(Car car) showCarDetails,
  }) {
    return removeCarFromGarage(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
  }) {
    return removeCarFromGarage?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) {
    if (removeCarFromGarage != null) {
      return removeCarFromGarage(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadCarsList value) loadCarsList,
    required TResult Function(AddCarToGarage value) addCarToGarage,
    required TResult Function(RemoveCarFromGarage value) removeCarFromGarage,
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) {
    return removeCarFromGarage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) {
    return removeCarFromGarage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) {
    if (removeCarFromGarage != null) {
      return removeCarFromGarage(this);
    }
    return orElse();
  }
}

abstract class RemoveCarFromGarage implements GarageEvent {
  const factory RemoveCarFromGarage(Car car) = _$RemoveCarFromGarage;

  Car get car;
  @JsonKey(ignore: true)
  $RemoveCarFromGarageCopyWith<RemoveCarFromGarage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCarDetailsCopyWith<$Res> {
  factory $ShowCarDetailsCopyWith(
          ShowCarDetails value, $Res Function(ShowCarDetails) then) =
      _$ShowCarDetailsCopyWithImpl<$Res>;
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$ShowCarDetailsCopyWithImpl<$Res> extends _$GarageEventCopyWithImpl<$Res>
    implements $ShowCarDetailsCopyWith<$Res> {
  _$ShowCarDetailsCopyWithImpl(
      ShowCarDetails _value, $Res Function(ShowCarDetails) _then)
      : super(_value, (v) => _then(v as ShowCarDetails));

  @override
  ShowCarDetails get _value => super._value as ShowCarDetails;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(ShowCarDetails(
      car == freezed
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc

class _$ShowCarDetails implements ShowCarDetails {
  const _$ShowCarDetails(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'GarageEvent.showCarDetails(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowCarDetails &&
            const DeepCollectionEquality().equals(other.car, car));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(car));

  @JsonKey(ignore: true)
  @override
  $ShowCarDetailsCopyWith<ShowCarDetails> get copyWith =>
      _$ShowCarDetailsCopyWithImpl<ShowCarDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Car>? listOfCars) loadCarsList,
    required TResult Function(Car car) addCarToGarage,
    required TResult Function(Car car) removeCarFromGarage,
    required TResult Function(Car car) showCarDetails,
  }) {
    return showCarDetails(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
  }) {
    return showCarDetails?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Car>? listOfCars)? loadCarsList,
    TResult Function(Car car)? addCarToGarage,
    TResult Function(Car car)? removeCarFromGarage,
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) {
    if (showCarDetails != null) {
      return showCarDetails(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadCarsList value) loadCarsList,
    required TResult Function(AddCarToGarage value) addCarToGarage,
    required TResult Function(RemoveCarFromGarage value) removeCarFromGarage,
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) {
    return showCarDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) {
    return showCarDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadCarsList value)? loadCarsList,
    TResult Function(AddCarToGarage value)? addCarToGarage,
    TResult Function(RemoveCarFromGarage value)? removeCarFromGarage,
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) {
    if (showCarDetails != null) {
      return showCarDetails(this);
    }
    return orElse();
  }
}

abstract class ShowCarDetails implements GarageEvent {
  const factory ShowCarDetails(Car car) = _$ShowCarDetails;

  Car get car;
  @JsonKey(ignore: true)
  $ShowCarDetailsCopyWith<ShowCarDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GarageStateTearOff {
  const _$GarageStateTearOff();

  Initial initial() {
    return const Initial();
  }

  GarageLoadingState garageLoadingState() {
    return const GarageLoadingState();
  }

  GarageLoadedState garageLoadedState(List<Car> cars) {
    return GarageLoadedState(
      cars,
    );
  }

  GarageErrorState garageErrorState(String error) {
    return GarageErrorState(
      error,
    );
  }
}

/// @nodoc
const $GarageState = _$GarageStateTearOff();

/// @nodoc
mixin _$GarageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() garageLoadingState,
    required TResult Function(List<Car> cars) garageLoadedState,
    required TResult Function(String error) garageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GarageLoadingState value) garageLoadingState,
    required TResult Function(GarageLoadedState value) garageLoadedState,
    required TResult Function(GarageErrorState value) garageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageStateCopyWith<$Res> {
  factory $GarageStateCopyWith(
          GarageState value, $Res Function(GarageState) then) =
      _$GarageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GarageStateCopyWithImpl<$Res> implements $GarageStateCopyWith<$Res> {
  _$GarageStateCopyWithImpl(this._value, this._then);

  final GarageState _value;
  // ignore: unused_field
  final $Res Function(GarageState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$GarageStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'GarageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() garageLoadingState,
    required TResult Function(List<Car> cars) garageLoadedState,
    required TResult Function(String error) garageErrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GarageLoadingState value) garageLoadingState,
    required TResult Function(GarageLoadedState value) garageLoadedState,
    required TResult Function(GarageErrorState value) garageErrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GarageState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $GarageLoadingStateCopyWith<$Res> {
  factory $GarageLoadingStateCopyWith(
          GarageLoadingState value, $Res Function(GarageLoadingState) then) =
      _$GarageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GarageLoadingStateCopyWithImpl<$Res>
    extends _$GarageStateCopyWithImpl<$Res>
    implements $GarageLoadingStateCopyWith<$Res> {
  _$GarageLoadingStateCopyWithImpl(
      GarageLoadingState _value, $Res Function(GarageLoadingState) _then)
      : super(_value, (v) => _then(v as GarageLoadingState));

  @override
  GarageLoadingState get _value => super._value as GarageLoadingState;
}

/// @nodoc

class _$GarageLoadingState implements GarageLoadingState {
  const _$GarageLoadingState();

  @override
  String toString() {
    return 'GarageState.garageLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GarageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() garageLoadingState,
    required TResult Function(List<Car> cars) garageLoadedState,
    required TResult Function(String error) garageErrorState,
  }) {
    return garageLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
  }) {
    return garageLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
    required TResult orElse(),
  }) {
    if (garageLoadingState != null) {
      return garageLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GarageLoadingState value) garageLoadingState,
    required TResult Function(GarageLoadedState value) garageLoadedState,
    required TResult Function(GarageErrorState value) garageErrorState,
  }) {
    return garageLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
  }) {
    return garageLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
    required TResult orElse(),
  }) {
    if (garageLoadingState != null) {
      return garageLoadingState(this);
    }
    return orElse();
  }
}

abstract class GarageLoadingState implements GarageState {
  const factory GarageLoadingState() = _$GarageLoadingState;
}

/// @nodoc
abstract class $GarageLoadedStateCopyWith<$Res> {
  factory $GarageLoadedStateCopyWith(
          GarageLoadedState value, $Res Function(GarageLoadedState) then) =
      _$GarageLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Car> cars});
}

/// @nodoc
class _$GarageLoadedStateCopyWithImpl<$Res>
    extends _$GarageStateCopyWithImpl<$Res>
    implements $GarageLoadedStateCopyWith<$Res> {
  _$GarageLoadedStateCopyWithImpl(
      GarageLoadedState _value, $Res Function(GarageLoadedState) _then)
      : super(_value, (v) => _then(v as GarageLoadedState));

  @override
  GarageLoadedState get _value => super._value as GarageLoadedState;

  @override
  $Res call({
    Object? cars = freezed,
  }) {
    return _then(GarageLoadedState(
      cars == freezed
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$GarageLoadedState implements GarageLoadedState {
  const _$GarageLoadedState(this.cars);

  @override
  final List<Car> cars;

  @override
  String toString() {
    return 'GarageState.garageLoadedState(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GarageLoadedState &&
            const DeepCollectionEquality().equals(other.cars, cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cars));

  @JsonKey(ignore: true)
  @override
  $GarageLoadedStateCopyWith<GarageLoadedState> get copyWith =>
      _$GarageLoadedStateCopyWithImpl<GarageLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() garageLoadingState,
    required TResult Function(List<Car> cars) garageLoadedState,
    required TResult Function(String error) garageErrorState,
  }) {
    return garageLoadedState(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
  }) {
    return garageLoadedState?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
    required TResult orElse(),
  }) {
    if (garageLoadedState != null) {
      return garageLoadedState(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GarageLoadingState value) garageLoadingState,
    required TResult Function(GarageLoadedState value) garageLoadedState,
    required TResult Function(GarageErrorState value) garageErrorState,
  }) {
    return garageLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
  }) {
    return garageLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
    required TResult orElse(),
  }) {
    if (garageLoadedState != null) {
      return garageLoadedState(this);
    }
    return orElse();
  }
}

abstract class GarageLoadedState implements GarageState {
  const factory GarageLoadedState(List<Car> cars) = _$GarageLoadedState;

  List<Car> get cars;
  @JsonKey(ignore: true)
  $GarageLoadedStateCopyWith<GarageLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageErrorStateCopyWith<$Res> {
  factory $GarageErrorStateCopyWith(
          GarageErrorState value, $Res Function(GarageErrorState) then) =
      _$GarageErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$GarageErrorStateCopyWithImpl<$Res>
    extends _$GarageStateCopyWithImpl<$Res>
    implements $GarageErrorStateCopyWith<$Res> {
  _$GarageErrorStateCopyWithImpl(
      GarageErrorState _value, $Res Function(GarageErrorState) _then)
      : super(_value, (v) => _then(v as GarageErrorState));

  @override
  GarageErrorState get _value => super._value as GarageErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GarageErrorState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GarageErrorState implements GarageErrorState {
  const _$GarageErrorState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'GarageState.garageErrorState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GarageErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $GarageErrorStateCopyWith<GarageErrorState> get copyWith =>
      _$GarageErrorStateCopyWithImpl<GarageErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() garageLoadingState,
    required TResult Function(List<Car> cars) garageLoadedState,
    required TResult Function(String error) garageErrorState,
  }) {
    return garageErrorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
  }) {
    return garageErrorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? garageLoadingState,
    TResult Function(List<Car> cars)? garageLoadedState,
    TResult Function(String error)? garageErrorState,
    required TResult orElse(),
  }) {
    if (garageErrorState != null) {
      return garageErrorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GarageLoadingState value) garageLoadingState,
    required TResult Function(GarageLoadedState value) garageLoadedState,
    required TResult Function(GarageErrorState value) garageErrorState,
  }) {
    return garageErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
  }) {
    return garageErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GarageLoadingState value)? garageLoadingState,
    TResult Function(GarageLoadedState value)? garageLoadedState,
    TResult Function(GarageErrorState value)? garageErrorState,
    required TResult orElse(),
  }) {
    if (garageErrorState != null) {
      return garageErrorState(this);
    }
    return orElse();
  }
}

abstract class GarageErrorState implements GarageState {
  const factory GarageErrorState(String error) = _$GarageErrorState;

  String get error;
  @JsonKey(ignore: true)
  $GarageErrorStateCopyWith<GarageErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
