import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:phone_codes/common/colors.dart';
import 'package:phone_codes/common/text_styles.dart';

class PhoneInput extends StatefulWidget {
  final String hint;
  final String flag;
  final String phoneCode;
  final VoidCallback? onTap;
  const PhoneInput({
    Key? key,
    required this.hint,
    required this.flag,
    required this.phoneCode,
    this.onTap,
  }) : super(key: key);

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {

  final _phoneInputController = TextEditingController();
  bool buttonEnable = false;
  final maskFormatter = MaskTextInputFormatter(mask: '(###) ###-####');

  @override
  void dispose() {
    _phoneInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildPhoneCodeButton(),
                Expanded(child: _buildPhoneInput())
              ],
            ),
          ),
          _buildNextButton(),
        ],
    );
  }

  Widget _buildPhoneCodeButton() {
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
                child: Text('+${widget.phoneCode}', style: PCTextStyles.inputText,),
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
        style: PCTextStyles.inputText,
        onChanged: onChange,
        inputFormatters: <TextInputFormatter>[maskFormatter],
        controller: _phoneInputController,
        keyboardType: TextInputType.phone,
        maxLength: 14,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: PCTextStyles.inputHint,
          border: InputBorder.none,
          counterText: ''
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 16),
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
          child: Image.asset(buttonEnable
            ? 'assets/ic_active_arrow_right.png'
            : 'assets/ic_arrow_right.png',
          )
        ),
      )
    );
  }

  void onChange(String value){
    setState(() {
      if(value.length == 14) {
        buttonEnable = true;
      } else {
        buttonEnable = false;
      }
    });
  }
}