part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.load() = CountryEventLoad;
  const factory CountryEvent.reload() = CountryEventReload;
}