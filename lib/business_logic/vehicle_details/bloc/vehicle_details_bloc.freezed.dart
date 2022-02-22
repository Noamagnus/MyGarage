// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VehicleDetailsEventTearOff {
  const _$VehicleDetailsEventTearOff();

  ShowCarDetails showCarDetails(Car car) {
    return ShowCarDetails(
      car,
    );
  }
}

/// @nodoc
const $VehicleDetailsEvent = _$VehicleDetailsEventTearOff();

/// @nodoc
mixin _$VehicleDetailsEvent {
  Car get car => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Car car) showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Car car)? showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Car car)? showCarDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleDetailsEventCopyWith<VehicleDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDetailsEventCopyWith<$Res> {
  factory $VehicleDetailsEventCopyWith(
          VehicleDetailsEvent value, $Res Function(VehicleDetailsEvent) then) =
      _$VehicleDetailsEventCopyWithImpl<$Res>;
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$VehicleDetailsEventCopyWithImpl<$Res>
    implements $VehicleDetailsEventCopyWith<$Res> {
  _$VehicleDetailsEventCopyWithImpl(this._value, this._then);

  final VehicleDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(VehicleDetailsEvent) _then;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(_value.copyWith(
      car: car == freezed
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
abstract class $ShowCarDetailsCopyWith<$Res>
    implements $VehicleDetailsEventCopyWith<$Res> {
  factory $ShowCarDetailsCopyWith(
          ShowCarDetails value, $Res Function(ShowCarDetails) then) =
      _$ShowCarDetailsCopyWithImpl<$Res>;
  @override
  $Res call({Car car});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$ShowCarDetailsCopyWithImpl<$Res>
    extends _$VehicleDetailsEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$ShowCarDetails implements ShowCarDetails {
  const _$ShowCarDetails(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'VehicleDetailsEvent.showCarDetails(car: $car)';
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
    required TResult Function(Car car) showCarDetails,
  }) {
    return showCarDetails(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Car car)? showCarDetails,
  }) {
    return showCarDetails?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(ShowCarDetails value) showCarDetails,
  }) {
    return showCarDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowCarDetails value)? showCarDetails,
  }) {
    return showCarDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowCarDetails value)? showCarDetails,
    required TResult orElse(),
  }) {
    if (showCarDetails != null) {
      return showCarDetails(this);
    }
    return orElse();
  }
}

abstract class ShowCarDetails implements VehicleDetailsEvent {
  const factory ShowCarDetails(Car car) = _$ShowCarDetails;

  @override
  Car get car;
  @override
  @JsonKey(ignore: true)
  $ShowCarDetailsCopyWith<ShowCarDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VehicleDetailsStateTearOff {
  const _$VehicleDetailsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loaded loaded(Car car) {
    return Loaded(
      car,
    );
  }
}

/// @nodoc
const $VehicleDetailsState = _$VehicleDetailsStateTearOff();

/// @nodoc
mixin _$VehicleDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Car car) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Car car)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Car car)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDetailsStateCopyWith<$Res> {
  factory $VehicleDetailsStateCopyWith(
          VehicleDetailsState value, $Res Function(VehicleDetailsState) then) =
      _$VehicleDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehicleDetailsStateCopyWithImpl<$Res>
    implements $VehicleDetailsStateCopyWith<$Res> {
  _$VehicleDetailsStateCopyWithImpl(this._value, this._then);

  final VehicleDetailsState _value;
  // ignore: unused_field
  final $Res Function(VehicleDetailsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$VehicleDetailsStateCopyWithImpl<$Res>
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
    return 'VehicleDetailsState.initial()';
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
    required TResult Function(Car car) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Car car)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Car car)? loaded,
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
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements VehicleDetailsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$VehicleDetailsStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(Loaded(
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

class _$Loaded implements Loaded {
  const _$Loaded(this.car);

  @override
  final Car car;

  @override
  String toString() {
    return 'VehicleDetailsState.loaded(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other.car, car));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(car));

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Car car) loaded,
  }) {
    return loaded(car);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Car car)? loaded,
  }) {
    return loaded?.call(car);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Car car)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(car);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements VehicleDetailsState {
  const factory Loaded(Car car) = _$Loaded;

  Car get car;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
