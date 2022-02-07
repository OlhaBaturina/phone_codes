// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryEventTearOff {
  const _$CountryEventTearOff();

  CountryEventLoad load() {
    return const CountryEventLoad();
  }
}

/// @nodoc
const $CountryEvent = _$CountryEventTearOff();

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountryEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res> implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  final CountryEvent _value;
  // ignore: unused_field
  final $Res Function(CountryEvent) _then;
}

/// @nodoc
abstract class $CountryEventLoadCopyWith<$Res> {
  factory $CountryEventLoadCopyWith(
          CountryEventLoad value, $Res Function(CountryEventLoad) then) =
      _$CountryEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryEventLoadCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res>
    implements $CountryEventLoadCopyWith<$Res> {
  _$CountryEventLoadCopyWithImpl(
      CountryEventLoad _value, $Res Function(CountryEventLoad) _then)
      : super(_value, (v) => _then(v as CountryEventLoad));

  @override
  CountryEventLoad get _value => super._value as CountryEventLoad;
}

/// @nodoc

class _$CountryEventLoad implements CountryEventLoad {
  const _$CountryEventLoad();

  @override
  String toString() {
    return 'CountryEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountryEventLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountryEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class CountryEventLoad implements CountryEvent {
  const factory CountryEventLoad() = _$CountryEventLoad;
}

/// @nodoc
class _$CountryStateTearOff {
  const _$CountryStateTearOff();

  CountryStateLoading loading() {
    return const CountryStateLoading();
  }

  CountryStateLoaded loaded({required List<Country> loadedCountry}) {
    return CountryStateLoaded(
      loadedCountry: loadedCountry,
    );
  }

  CountryStateError error() {
    return const CountryStateError();
  }
}

/// @nodoc
const $CountryState = _$CountryStateTearOff();

/// @nodoc
mixin _$CountryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Country> loadedCountry) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryStateLoading value) loading,
    required TResult Function(CountryStateLoaded value) loaded,
    required TResult Function(CountryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res> implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  final CountryState _value;
  // ignore: unused_field
  final $Res Function(CountryState) _then;
}

/// @nodoc
abstract class $CountryStateLoadingCopyWith<$Res> {
  factory $CountryStateLoadingCopyWith(
          CountryStateLoading value, $Res Function(CountryStateLoading) then) =
      _$CountryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryStateLoadingCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryStateLoadingCopyWith<$Res> {
  _$CountryStateLoadingCopyWithImpl(
      CountryStateLoading _value, $Res Function(CountryStateLoading) _then)
      : super(_value, (v) => _then(v as CountryStateLoading));

  @override
  CountryStateLoading get _value => super._value as CountryStateLoading;
}

/// @nodoc

class _$CountryStateLoading implements CountryStateLoading {
  const _$CountryStateLoading();

  @override
  String toString() {
    return 'CountryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Country> loadedCountry) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryStateLoading value) loading,
    required TResult Function(CountryStateLoaded value) loaded,
    required TResult Function(CountryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CountryStateLoading implements CountryState {
  const factory CountryStateLoading() = _$CountryStateLoading;
}

/// @nodoc
abstract class $CountryStateLoadedCopyWith<$Res> {
  factory $CountryStateLoadedCopyWith(
          CountryStateLoaded value, $Res Function(CountryStateLoaded) then) =
      _$CountryStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Country> loadedCountry});
}

/// @nodoc
class _$CountryStateLoadedCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryStateLoadedCopyWith<$Res> {
  _$CountryStateLoadedCopyWithImpl(
      CountryStateLoaded _value, $Res Function(CountryStateLoaded) _then)
      : super(_value, (v) => _then(v as CountryStateLoaded));

  @override
  CountryStateLoaded get _value => super._value as CountryStateLoaded;

  @override
  $Res call({
    Object? loadedCountry = freezed,
  }) {
    return _then(CountryStateLoaded(
      loadedCountry: loadedCountry == freezed
          ? _value.loadedCountry
          : loadedCountry // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$CountryStateLoaded implements CountryStateLoaded {
  const _$CountryStateLoaded({required this.loadedCountry});

  @override
  final List<Country> loadedCountry;

  @override
  String toString() {
    return 'CountryState.loaded(loadedCountry: $loadedCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CountryStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.loadedCountry, loadedCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(loadedCountry));

  @JsonKey(ignore: true)
  @override
  $CountryStateLoadedCopyWith<CountryStateLoaded> get copyWith =>
      _$CountryStateLoadedCopyWithImpl<CountryStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Country> loadedCountry) loaded,
    required TResult Function() error,
  }) {
    return loaded(loadedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(loadedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryStateLoading value) loading,
    required TResult Function(CountryStateLoaded value) loaded,
    required TResult Function(CountryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CountryStateLoaded implements CountryState {
  const factory CountryStateLoaded({required List<Country> loadedCountry}) =
      _$CountryStateLoaded;

  List<Country> get loadedCountry;
  @JsonKey(ignore: true)
  $CountryStateLoadedCopyWith<CountryStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateErrorCopyWith<$Res> {
  factory $CountryStateErrorCopyWith(
          CountryStateError value, $Res Function(CountryStateError) then) =
      _$CountryStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryStateErrorCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res>
    implements $CountryStateErrorCopyWith<$Res> {
  _$CountryStateErrorCopyWithImpl(
      CountryStateError _value, $Res Function(CountryStateError) _then)
      : super(_value, (v) => _then(v as CountryStateError));

  @override
  CountryStateError get _value => super._value as CountryStateError;
}

/// @nodoc

class _$CountryStateError implements CountryStateError {
  const _$CountryStateError();

  @override
  String toString() {
    return 'CountryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountryStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Country> loadedCountry) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Country> loadedCountry)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryStateLoading value) loading,
    required TResult Function(CountryStateLoaded value) loaded,
    required TResult Function(CountryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryStateLoading value)? loading,
    TResult Function(CountryStateLoaded value)? loaded,
    TResult Function(CountryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CountryStateError implements CountryState {
  const factory CountryStateError() = _$CountryStateError;
}
