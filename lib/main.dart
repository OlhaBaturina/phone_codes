import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_codes/app.dart';
import 'package:phone_codes/bloc.observable.dart';


void main() {
  BlocOverrides.runZoned(
    () => runApp(const TestApp()),
    blocObserver: CountryBlocObservable()    
  );
 
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: PhoneApp(),
    );
  }
}