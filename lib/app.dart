import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_codes/api/counry_api.dart';
import 'package:phone_codes/bloc/country_bloc.dart';
import 'package:phone_codes/home_screen/home_screen.dart';


class PhoneApp extends StatelessWidget {
  PhoneApp({Key? key, }) : super(key: key);
  
  final fetchCountry = CountryApi();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CountryBloc(countryRepo: fetchCountry),
        child: const HomeScreen(),
    );
  }
}