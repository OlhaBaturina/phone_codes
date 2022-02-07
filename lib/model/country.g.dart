// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: json['name'] as String,
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
      callingCodes: (json['callingCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'callingCodes': instance.callingCodes,
    };

_$_Flags _$$_FlagsFromJson(Map<String, dynamic> json) => _$_Flags(
      flag: Uri.parse(json['png'] as String),
    );

Map<String, dynamic> _$$_FlagsToJson(_$_Flags instance) => <String, dynamic>{
      'png': instance.flag.toString(),
    };
