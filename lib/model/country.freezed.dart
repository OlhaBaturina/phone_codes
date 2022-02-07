// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {required String name,
      required Flags? flags,
      required List<String> callingCodes}) {
    return _Country(
      name: name,
      flags: flags,
      callingCodes: callingCodes,
    );
  }

  Country fromJson(Map<String, Object?> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  String get name => throw _privateConstructorUsedError;
  Flags? get flags => throw _privateConstructorUsedError;
  List<String> get callingCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({String name, Flags? flags, List<String> callingCodes});

  $FlagsCopyWith<$Res>? get flags;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? flags = freezed,
    Object? callingCodes = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags?,
      callingCodes: callingCodes == freezed
          ? _value.callingCodes
          : callingCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $FlagsCopyWith<$Res>? get flags {
    if (_value.flags == null) {
      return null;
    }

    return $FlagsCopyWith<$Res>(_value.flags!, (value) {
      return _then(_value.copyWith(flags: value));
    });
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call({String name, Flags? flags, List<String> callingCodes});

  @override
  $FlagsCopyWith<$Res>? get flags;
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? flags = freezed,
    Object? callingCodes = freezed,
  }) {
    return _then(_Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags?,
      callingCodes: callingCodes == freezed
          ? _value.callingCodes
          : callingCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country implements _Country {
  const _$_Country(
      {required this.name, required this.flags, required this.callingCodes});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final String name;
  @override
  final Flags? flags;
  @override
  final List<String> callingCodes;

  @override
  String toString() {
    return 'Country(name: $name, flags: $flags, callingCodes: $callingCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.flags, flags) &&
            const DeepCollectionEquality()
                .equals(other.callingCodes, callingCodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(flags),
      const DeepCollectionEquality().hash(callingCodes));

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {required String name,
      required Flags? flags,
      required List<String> callingCodes}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get name;
  @override
  Flags? get flags;
  @override
  List<String> get callingCodes;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
class _$FlagsTearOff {
  const _$FlagsTearOff();

  _Flags call({@JsonKey(name: 'png') required Uri flag}) {
    return _Flags(
      flag: flag,
    );
  }

  Flags fromJson(Map<String, Object?> json) {
    return Flags.fromJson(json);
  }
}

/// @nodoc
const $Flags = _$FlagsTearOff();

/// @nodoc
mixin _$Flags {
  @JsonKey(name: 'png')
  Uri get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'png') Uri flag});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res> implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  final Flags _value;
  // ignore: unused_field
  final $Res Function(Flags) _then;

  @override
  $Res call({
    Object? flag = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$FlagsCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$FlagsCopyWith(_Flags value, $Res Function(_Flags) then) =
      __$FlagsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'png') Uri flag});
}

/// @nodoc
class __$FlagsCopyWithImpl<$Res> extends _$FlagsCopyWithImpl<$Res>
    implements _$FlagsCopyWith<$Res> {
  __$FlagsCopyWithImpl(_Flags _value, $Res Function(_Flags) _then)
      : super(_value, (v) => _then(v as _Flags));

  @override
  _Flags get _value => super._value as _Flags;

  @override
  $Res call({
    Object? flag = freezed,
  }) {
    return _then(_Flags(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flags implements _Flags {
  const _$_Flags({@JsonKey(name: 'png') required this.flag});

  factory _$_Flags.fromJson(Map<String, dynamic> json) =>
      _$$_FlagsFromJson(json);

  @override
  @JsonKey(name: 'png')
  final Uri flag;

  @override
  String toString() {
    return 'Flags(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Flags &&
            const DeepCollectionEquality().equals(other.flag, flag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flag));

  @JsonKey(ignore: true)
  @override
  _$FlagsCopyWith<_Flags> get copyWith =>
      __$FlagsCopyWithImpl<_Flags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlagsToJson(this);
  }
}

abstract class _Flags implements Flags {
  const factory _Flags({@JsonKey(name: 'png') required Uri flag}) = _$_Flags;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$_Flags.fromJson;

  @override
  @JsonKey(name: 'png')
  Uri get flag;
  @override
  @JsonKey(ignore: true)
  _$FlagsCopyWith<_Flags> get copyWith => throw _privateConstructorUsedError;
}
