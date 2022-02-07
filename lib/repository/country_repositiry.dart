/*
 * File: review_repository.dart
 * Created: Monday, 22nd November 2021 11:36:49 pm
 * Author: Olha Tymoshenko (o.tymoshenko@amifactory.team)
 */


import 'package:phone_codes/api/counry_api.dart';
import 'package:phone_codes/model/country.dart';

class ReviewRepository {
  
  ReviewRepository();

  Stream<List<Country>> fetchCountries() {
    return CountryApi().getCountries().asStream()
      .map((countries) => countries);    
  }
}