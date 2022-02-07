// import 'dart:async';
// import 'dart:collection';
// import 'dart:math';

// import 'package:phone_codes/abstracts/item_view.dart';
// import 'package:phone_codes/api/counry_api.dart';
// import 'package:phone_codes/bloc/bloc_event_state.dart';
// import 'package:phone_codes/model/country.dart';
// import 'package:phone_codes/repository/country_repositiry.dart';
// import 'package:rxdart/subjects.dart';

// import 'package:rxdart/rxdart.dart';

// enum _CountriesEventType { loadAll, loadByName }

// class CountriesEvent extends BlocEvent {
//   final _CountriesEventType type;
//   final String? countryName;
  
//   CountriesEvent._({
//     required this.type,
//     this.countryName,
//   });


//   factory CountriesEvent.loadAll() {
//     return CountriesEvent._(type: _CountriesEventType.loadAll);
//   }

//   factory CountriesEvent.loadByName(String countryName) {
//     return CountriesEvent._(type: _CountriesEventType.loadByName, countryName: countryName);
//   }
// }

// class CountriesState extends BlocState {
//   final bool isLoading;
//   final bool isLoaded;
//   final bool isLoadFailed;
//   final List<ItemView> countries;
//   final Country? counry;
//   final Error? error;

//   CountriesState({
//     this.isLoading = false,
//     this.isLoaded = false,
//     this.isLoadFailed = false,
//     this.countries = const <ItemView>[],
//     this.counry,
//     this.error,
//   });

//   factory CountriesState.loading() {
//     return CountriesState(isLoading: true);
//   }

//   factory CountriesState.loaded(List<ItemView> countries) {
//     return CountriesState(isLoaded: true, countries: countries,);
//   }

//   factory CountriesState.loadFailed(Error error) {
//     return CountriesState(isLoadFailed: true, error: error);
//   }
// }

// class CountryItemView extends ItemView {
//   String get name => country.name;
//   String get flag => country.flag;
//   String get callingCodes => country.callingCodes.first;

//   Country country;

//   CountryItemView._({ required this.country });

//   static CountryItemView fromCountry(Country country) {
//     return CountryItemView._(country: country);
//   }

//   @override
//   bool operator ==(other) {
//     return other is CountryItemView && country.name == other.country.name;
//   }

//   @override
//   int get hashCode => country.name.hashCode;
// }

// class CountryBloc extends BlocEventStateBase<CountriesEvent, CountriesState> {
//   //
//   // Inputs
//   //
//   Function(String) get onSearchPhraseChanged => _searchPhraseController.sink.add;
//   //
//   // Output
//   //
//   Stream<Error?> get commonError => _commonErrorController.stream;
//   Stream<Error?> get filterError => _filterErrorController.stream;
//   //
//   // Private
//   //
//   final _searchPhraseController = BehaviorSubject<String?>();
//   final _filterErrorController = BehaviorSubject<Error?>();

//   final _commonErrorController = BehaviorSubject<Error?>();

//   final loadedCountries = LinkedHashSet<CountryItemView>();
//   String? _filterPhrase;
//   final String _countryName = 'ukraine';

//   final ReviewRepository _countriesRepo = ReviewRepository();

//   StreamSubscription? _searchPhraseSub;
  
//   CountryBloc() : super(initialState: CountriesState.loading()) {
   
//     _searchPhraseSub = _searchPhraseController
//       .distinct()
//       .debounceTime(const Duration(milliseconds: 500))
//       .listen((value) {
//         if (value != null && value.isNotEmpty) {
//           if (_filterPhrase != value) {
//             _filterPhrase = value;
//           }
//           _filterErrorController.add(null);
//           emitEvent(CountriesEvent.loadAll());
//           return;
//         }

        
//         if (_filterPhrase != null && (value == null || value.isEmpty)) {
//           _filterPhrase = null;
//           emitEvent(CountriesEvent.loadAll());
//           return;
//         }
//       });
//   }

//   @override
//   void dispose() {
//     _commonErrorController.close();
//     _searchPhraseController.close();
//     _filterErrorController.close();

//     _searchPhraseSub?.cancel();

//     super.dispose();
//   }

//   @override
//   Stream<CountriesState> eventHandler(CountriesEvent event, CountriesState currentState) async* {
//     if (event.type == _CountriesEventType.loadAll) {
//       emitEvent(CountriesEvent.loadAll());
//       yield* _countriesRepo.fetchCountries().map((countries) {
//         print(countries);
//         return CountriesState.loaded(countries as List<ItemView>);
//       });
//     }
      
//   }
// }

