import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:phone_codes/common/colors.dart';
import 'package:phone_codes/common/text_styles.dart';
import 'package:phone_codes/model/country.dart';

class CountryListScreen extends StatefulWidget {
  final List<Country> countryList;

  const CountryListScreen({
    Key? key,
    required this.countryList,
  }) : super(key: key);

  @override
  _CountryListScreenState createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  String query = '';
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 44, right: 16, left: 16),
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 20),
            decoration: const BoxDecoration(
              color: PCColors.blueGradientColor,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.0, 0.34, 0.56, 0.76, 0.87],
                colors: [
                  PCColors.darkGradientColor,
                  PCColors.secondDarkGradientColor,
                  PCColors.thirdGradientColor,
                  PCColors.fourthGradientColor,
                  PCColors.lightBlueGradientColor,
                ],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12), 
                topLeft: Radius.circular(12)
              )
            ),
          ),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height - 60,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 60),
              padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 20),
              decoration: const BoxDecoration(
                color: PCColors.gradientLightColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24), 
                  topLeft: Radius.circular(24))
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(child: Text('Country code', style: PCTextStyles.h1Title,)),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: PCColors.inputColor,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Material(
                            borderRadius: const BorderRadius.all(Radius.circular(6)),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.all(Radius.circular(6)),
                              onTap: () => Navigator.of(context).pop(),
                              child:  Image.asset('assets/ic_close.png'), 
                            ),
                          ),
                        ),
                      ],
                    ),
                    _buildSearchInput(),
                    Column(children: _buildCountryList())
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchInput() {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: PCColors.inputColor,
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: PCTextStyles.inputText,
        onChanged: (value) => query = value,
        decoration: InputDecoration(
          prefixIcon: Image.asset('assets/ic_search.png'),
          hintText: 'Search',
          hintStyle: PCTextStyles.inputText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  List<Widget> _buildCountryList() {
    final list = <Widget>[];
      
    for(var item in widget.countryList){
      if(item.name.toLowerCase().contains(query.toLowerCase()) || 
          item.callingCodes.first.contains(query.toString())
      ) {
      
        final _widget = _buildCountryInfoItem(
          flag: item.flags!.flag.toString(), 
          phoneCode: item.callingCodes.first, 
          country: item.name,
          currentCountry: item
        );

        list.add(_widget);
      }
    }
    return list;
  }

  Widget _buildCountryInfoItem({
    required String flag, 
    required String phoneCode, 
    required String country, 
    required Country currentCountry
  }) {

    return GestureDetector(
      onTap: () => Navigator.pop(context, currentCountry),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl: flag,
                  placeholder: (context, url) => 
                    Container(width: 24, height: 20, color: PCColors.gradientLightColor,),
                  errorWidget: (context, url, error) => 
                    Container(width: 24, height: 20, color: PCColors.gradientColor,), 
                  fit: BoxFit.cover, 
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 12),
              child: Text('+$phoneCode', style: PCTextStyles.inputText,),
            ),
            Expanded(child: Text(country, style: PCTextStyles.countryName,))
          ],
        ),
      ),
    );
  }
}