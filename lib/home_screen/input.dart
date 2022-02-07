import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_codes/abstracts/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PhoneInput extends StatefulWidget {
  final bool enabled;
  final String? label;
  final String hint;
  final String flag;
  final String phoneCode;
  final EdgeInsetsGeometry margin;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  const PhoneInput({
    Key? key,
    this.enabled = true,
    this.label,
    required this.hint,
    required this.flag,
    required this.phoneCode,
    this.margin = EdgeInsets.zero,
    this.inputAction,
    this.focusNode,
    this.onTap,
  }) : super(key: key);

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {

  final _phoneInputController = TextEditingController();
  bool buttonEnable = false;
  final String _phoneNumber = '';

  @override
  void dispose() {
    _phoneInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 160),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildCodeButton(),
              Expanded(child: _buildPhoneInput())
            ],
          ),
          _buildNextButton(),
        ],
      ),
    );
  }

  Widget _buildCodeButton() {
    return Material(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: widget.onTap,
        child: Container(
          height: 48,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          decoration: const BoxDecoration(
            color: PCColors.inputColor,
            borderRadius: BorderRadius.all(Radius.circular(16))
          ),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 20,
                decoration: const BoxDecoration(
                  color: PCColors.inputColor,
                  borderRadius: BorderRadius.all(Radius.circular(3))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CachedNetworkImage(
                  imageUrl: widget.flag,
                  placeholder: (context, url) => 
                    Container(width: 24, height: 20, color: PCColors.gradientLightColor,),
                  errorWidget: (context, url, error) => 
                    Container(width: 24, height: 20, color: PCColors.gradientColor,), 
                  fit: BoxFit.cover, 
                )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text('+${widget.phoneCode}'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneInput() {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric( horizontal: 12),
      decoration: const BoxDecoration(
        color: PCColors.inputColor,
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: TextFormField(
        onChanged: onChange,
        controller: _phoneInputController,
        keyboardType: TextInputType.phone,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: widget.hint,
          border: InputBorder.none,
          counterText: ''
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Container(
      margin: const EdgeInsets.only(top: 125),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: buttonEnable
          ? Colors.white
          : PCColors.inputColor,
        borderRadius: const BorderRadius.all(Radius.circular(16))
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          onTap: buttonEnable ? (){} : null, 
          child: Icon(
            Icons.arrow_forward, 
            color: buttonEnable
              ? PCColors.mainPurpleColor
              : PCColors.hintInputColor,
              size: 30,
          )
        ),
      )
    );
  }

  void onChange(String value){
    setState(() {
      if(value.length == 10) {
        buttonEnable = true;
      } else {
        buttonEnable = false;
      }
    });
  }

  RegExp exp = RegExp(r"\\D*?(\\d\\D*?){10}");
  // Iterable<RegExpMatch> matches = exp.allMatches(_phoneInputController.value);
}