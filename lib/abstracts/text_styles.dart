import 'package:flutter/material.dart';
import 'package:phone_codes/abstracts/colors.dart';

class AppTextStyles {
  AppTextStyles._();

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

}