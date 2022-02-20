// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'imagepicker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImagepickerEventTearOff {
  const _$ImagepickerEventTearOff();

  Started started() {
    return const Started();
  }

  TakePicture takePicture() {
    return const TakePicture();
  }

  PickFromGallery pickFromGallery() {
    return const PickFromGallery();
  }

  ClearPhoto clearPhoto() {
    return const ClearPhoto();
  }
}

/// @nodoc
const $ImagepickerEvent = _$ImagepickerEventTearOff();

/// @nodoc
mixin _$ImagepickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() takePicture,
    required TResult Function() pickFromGallery,
    required TResult Function() clearPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(PickFromGallery value) pickFromGallery,
    required TResult Function(ClearPhoto value) clearPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagepickerEventCopyWith<$Res> {
  factory $ImagepickerEventCopyWith(
          ImagepickerEvent value, $Res Function(ImagepickerEvent) then) =
      _$ImagepickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagepickerEventCopyWithImpl<$Res>
    implements $ImagepickerEventCopyWith<$Res> {
  _$ImagepickerEventCopyWithImpl(this._value, this._then);

  final ImagepickerEvent _value;
  // ignore: unused_field
  final $Res Function(ImagepickerEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$ImagepickerEventCopyWithImpl<$Res>
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
    return 'ImagepickerEvent.started()';
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
    required TResult Function() takePicture,
    required TResult Function() pickFromGallery,
    required TResult Function() clearPhoto,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
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
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(PickFromGallery value) pickFromGallery,
    required TResult Function(ClearPhoto value) clearPhoto,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements ImagepickerEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $TakePictureCopyWith<$Res> {
  factory $TakePictureCopyWith(
          TakePicture value, $Res Function(TakePicture) then) =
      _$TakePictureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TakePictureCopyWithImpl<$Res>
    extends _$ImagepickerEventCopyWithImpl<$Res>
    implements $TakePictureCopyWith<$Res> {
  _$TakePictureCopyWithImpl(
      TakePicture _value, $Res Function(TakePicture) _then)
      : super(_value, (v) => _then(v as TakePicture));

  @override
  TakePicture get _value => super._value as TakePicture;
}

/// @nodoc

class _$TakePicture implements TakePicture {
  const _$TakePicture();

  @override
  String toString() {
    return 'ImagepickerEvent.takePicture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TakePicture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() takePicture,
    required TResult Function() pickFromGallery,
    required TResult Function() clearPhoto,
  }) {
    return takePicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
  }) {
    return takePicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
    required TResult orElse(),
  }) {
    if (takePicture != null) {
      return takePicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(PickFromGallery value) pickFromGallery,
    required TResult Function(ClearPhoto value) clearPhoto,
  }) {
    return takePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
  }) {
    return takePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
    required TResult orElse(),
  }) {
    if (takePicture != null) {
      return takePicture(this);
    }
    return orElse();
  }
}

abstract class TakePicture implements ImagepickerEvent {
  const factory TakePicture() = _$TakePicture;
}

/// @nodoc
abstract class $PickFromGalleryCopyWith<$Res> {
  factory $PickFromGalleryCopyWith(
          PickFromGallery value, $Res Function(PickFromGallery) then) =
      _$PickFromGalleryCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickFromGalleryCopyWithImpl<$Res>
    extends _$ImagepickerEventCopyWithImpl<$Res>
    implements $PickFromGalleryCopyWith<$Res> {
  _$PickFromGalleryCopyWithImpl(
      PickFromGallery _value, $Res Function(PickFromGallery) _then)
      : super(_value, (v) => _then(v as PickFromGallery));

  @override
  PickFromGallery get _value => super._value as PickFromGallery;
}

/// @nodoc

class _$PickFromGallery implements PickFromGallery {
  const _$PickFromGallery();

  @override
  String toString() {
    return 'ImagepickerEvent.pickFromGallery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickFromGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() takePicture,
    required TResult Function() pickFromGallery,
    required TResult Function() clearPhoto,
  }) {
    return pickFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
  }) {
    return pickFromGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
    required TResult orElse(),
  }) {
    if (pickFromGallery != null) {
      return pickFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(PickFromGallery value) pickFromGallery,
    required TResult Function(ClearPhoto value) clearPhoto,
  }) {
    return pickFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
  }) {
    return pickFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
    required TResult orElse(),
  }) {
    if (pickFromGallery != null) {
      return pickFromGallery(this);
    }
    return orElse();
  }
}

abstract class PickFromGallery implements ImagepickerEvent {
  const factory PickFromGallery() = _$PickFromGallery;
}

/// @nodoc
abstract class $ClearPhotoCopyWith<$Res> {
  factory $ClearPhotoCopyWith(
          ClearPhoto value, $Res Function(ClearPhoto) then) =
      _$ClearPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearPhotoCopyWithImpl<$Res>
    extends _$ImagepickerEventCopyWithImpl<$Res>
    implements $ClearPhotoCopyWith<$Res> {
  _$ClearPhotoCopyWithImpl(ClearPhoto _value, $Res Function(ClearPhoto) _then)
      : super(_value, (v) => _then(v as ClearPhoto));

  @override
  ClearPhoto get _value => super._value as ClearPhoto;
}

/// @nodoc

class _$ClearPhoto implements ClearPhoto {
  const _$ClearPhoto();

  @override
  String toString() {
    return 'ImagepickerEvent.clearPhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearPhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() takePicture,
    required TResult Function() pickFromGallery,
    required TResult Function() clearPhoto,
  }) {
    return clearPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
  }) {
    return clearPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? takePicture,
    TResult Function()? pickFromGallery,
    TResult Function()? clearPhoto,
    required TResult orElse(),
  }) {
    if (clearPhoto != null) {
      return clearPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(PickFromGallery value) pickFromGallery,
    required TResult Function(ClearPhoto value) clearPhoto,
  }) {
    return clearPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
  }) {
    return clearPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(PickFromGallery value)? pickFromGallery,
    TResult Function(ClearPhoto value)? clearPhoto,
    required TResult orElse(),
  }) {
    if (clearPhoto != null) {
      return clearPhoto(this);
    }
    return orElse();
  }
}

abstract class ClearPhoto implements ImagepickerEvent {
  const factory ClearPhoto() = _$ClearPhoto;
}

/// @nodoc
class _$ImagepickerStateTearOff {
  const _$ImagepickerStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Fulfilled fulfilled(String? imageUrl) {
    return Fulfilled(
      imageUrl,
    );
  }
}

/// @nodoc
const $ImagepickerState = _$ImagepickerStateTearOff();

/// @nodoc
mixin _$ImagepickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? imageUrl) fulfilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? imageUrl)? fulfilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? imageUrl)? fulfilled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Fulfilled value) fulfilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Fulfilled value)? fulfilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Fulfilled value)? fulfilled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagepickerStateCopyWith<$Res> {
  factory $ImagepickerStateCopyWith(
          ImagepickerState value, $Res Function(ImagepickerState) then) =
      _$ImagepickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagepickerStateCopyWithImpl<$Res>
    implements $ImagepickerStateCopyWith<$Res> {
  _$ImagepickerStateCopyWithImpl(this._value, this._then);

  final ImagepickerState _value;
  // ignore: unused_field
  final $Res Function(ImagepickerState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ImagepickerStateCopyWithImpl<$Res>
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
    return 'ImagepickerState.initial()';
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
    required TResult Function(String? imageUrl) fulfilled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? imageUrl)? fulfilled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? imageUrl)? fulfilled,
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
    required TResult Function(Fulfilled value) fulfilled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Fulfilled value)? fulfilled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Fulfilled value)? fulfilled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ImagepickerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $FulfilledCopyWith<$Res> {
  factory $FulfilledCopyWith(Fulfilled value, $Res Function(Fulfilled) then) =
      _$FulfilledCopyWithImpl<$Res>;
  $Res call({String? imageUrl});
}

/// @nodoc
class _$FulfilledCopyWithImpl<$Res> extends _$ImagepickerStateCopyWithImpl<$Res>
    implements $FulfilledCopyWith<$Res> {
  _$FulfilledCopyWithImpl(Fulfilled _value, $Res Function(Fulfilled) _then)
      : super(_value, (v) => _then(v as Fulfilled));

  @override
  Fulfilled get _value => super._value as Fulfilled;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(Fulfilled(
      imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Fulfilled implements Fulfilled {
  const _$Fulfilled(this.imageUrl);

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ImagepickerState.fulfilled(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Fulfilled &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  $FulfilledCopyWith<Fulfilled> get copyWith =>
      _$FulfilledCopyWithImpl<Fulfilled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? imageUrl) fulfilled,
  }) {
    return fulfilled(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? imageUrl)? fulfilled,
  }) {
    return fulfilled?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? imageUrl)? fulfilled,
    required TResult orElse(),
  }) {
    if (fulfilled != null) {
      return fulfilled(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Fulfilled value) fulfilled,
  }) {
    return fulfilled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Fulfilled value)? fulfilled,
  }) {
    return fulfilled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Fulfilled value)? fulfilled,
    required TResult orElse(),
  }) {
    if (fulfilled != null) {
      return fulfilled(this);
    }
    return orElse();
  }
}

abstract class Fulfilled implements ImagepickerState {
  const factory Fulfilled(String? imageUrl) = _$Fulfilled;

  String? get imageUrl;
  @JsonKey(ignore: true)
  $FulfilledCopyWith<Fulfilled> get copyWith =>
      throw _privateConstructorUsedError;
}
