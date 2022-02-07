import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ErrorView extends StatelessWidget {
  VoidCallback? onRetryBtnPressed;

  ErrorView({ Key? key, this.onRetryBtnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         
          Text('Ooops..'),
          Container(
            margin: const EdgeInsets.only(bottom: 120, top: 4),
            child: const Text('Something went wrong!', )
          ),
          Container(
      width: 180, 
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        
      ),
      child: TextButton(
        child: Text('retry'),
        onPressed: onRetryBtnPressed,
      ),
    )
        ],
      ),
    );
  }
}