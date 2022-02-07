import 'package:flutter/material.dart';
import 'package:phone_codes/common/colors.dart';

class PCTextStyles {
  PCTextStyles._();

  static const TextStyle h1Title = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 32,
    height: 1.03
  );

  static const TextStyle inputText = TextStyle(
    color: PCColors.mainPurpleColor,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.25
  );

  static const TextStyle inputHint = TextStyle(
    color: PCColors.hintInputColor,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.25
  );

  static const TextStyle countryName = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.25
  );

}