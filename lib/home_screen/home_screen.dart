import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phone_codes/abstracts/colors.dart';
import 'package:phone_codes/abstracts/text_styles.dart';
import 'package:phone_codes/bloc/country_bloc.dart';
import 'package:phone_codes/home_screen/country_list_screen.dart';
import 'package:phone_codes/home_screen/error_view.dart';
import 'package:phone_codes/home_screen/input.dart';
import 'package:phone_codes/model/country.dart';
import 'package:provider/src/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final List<Country> _currentResult = [];
late Country _currentCountry;
  
  @override
  void initState() {
    super.initState();
    if(_currentResult.isEmpty) {
      context
      .read<CountryBloc>()
      .add(const CountryEvent.load());
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CountryBloc>().state;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: AppBar().preferredSize.height + MediaQuery.of(context).padding.top,
          left: 20,
          right: 20  
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: PCColors.gradientLightColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Get Started', style: AppTextStyles.h1Title),
            
            state.when(
              loading: () {
                  return Container(
                    margin: const EdgeInsets.only(top: 160),
                    child: const Center(child: CircularProgressIndicator()),
                  );
              },

              loaded: (noviesLoaded) {
                if(_currentResult.isEmpty){
                  _currentResult.addAll(noviesLoaded);
                  _currentCountry = _currentResult[239];
                }
                return  PhoneInput(
                  onTap: () async {
                    final result = await Navigator.of(context).push(CupertinoPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => CountryListScreen(countryList: _currentResult,)));
                      
                      if (result != null) {
                        _currentCountry = result;
                        print('$result');
                      }
                  },
                  hint: '(123) 123-1234',
                  flag: _currentCountry.flags!.flag.toString(),
                  phoneCode: _currentCountry.callingCodes.toString().replaceAll('[', '').replaceAll(']', ''),
                );
              },

              error: () => ErrorView(onRetryBtnPressed: () =>
                context.read<CountryBloc>() 
                  .add(const CountryEvent
                  .load())
              )
            )
          ],
        ),
      ),
    );
  }
}
