import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:phone_codes/model/country.dart';

class CountryApi {
  final url = 'https://restcountries.com/v2/all';

  Future<List<Country>> getCountries() async {
    try{
      var response = await http.get(Uri.parse(url));
      
      var jsonResult = (jsonDecode(response.body) as List).map((e) => Country.fromJson(e)).toList() ;

      log('RESPONSE: $jsonResult');
      return jsonResult;
    }
    catch(e) {

      log('$e');
      throw Exception(e.toString());
    }
  }
}