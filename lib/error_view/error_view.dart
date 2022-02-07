import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_codes/common/colors.dart';
import 'package:phone_codes/common/text_styles.dart';

class ErrorView extends StatelessWidget {
  VoidCallback? onRetryBtnPressed;

  ErrorView({ Key? key, this.onRetryBtnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Ooops..', style: PCTextStyles.countryName,),
          Container(
            margin: const EdgeInsets.only(bottom: 120, top: 4),
            child: const Text('Something went wrong!', style: PCTextStyles.inputHint,)
          ),
          Container(
            width: 180, 
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
            ),
            child: GestureDetector(
              onTap: onRetryBtnPressed,
              child: Container(
                color: PCColors.inputColor,
                child: const Text('Retry', style: PCTextStyles.inputText,),
              ),
            ),
          )
        ],
      ),
    );
  }
}