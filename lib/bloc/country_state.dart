part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.loading() = CountryStateLoading;
  const factory CountryState.loaded({required List<Country> loadedCountry}) = CountryStateLoaded;
  const factory CountryState.error() = CountryStateError;
}