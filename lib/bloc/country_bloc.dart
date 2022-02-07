import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_codes/api/counry_api.dart';
import 'package:phone_codes/model/country.dart';

part 'country_bloc.freezed.dart';
part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final CountryApi countryApi;
  CountryBloc({required this.countryApi}):super(const CountryState.loading()) {
    on<CountryEventLoad>((event, emit) async {
      emit(const CountryState.loading());
      try {
        List<Country> _countryLoaded = await countryApi
        .getCountries();
        emit(CountryState.loaded(loadedCountry: _countryLoaded));

      } catch (e) {
        emit(const CountryState.error());
        rethrow;
      }
    });
  }
}
