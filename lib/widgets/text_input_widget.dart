import 'package:flutter/material.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/text_styles.dart';
import 'package:flutter/services.dart';

class InputTextWidget extends StatefulWidget {
  InputTextWidget({super.key, IsPassword = false, IsReinputPassword = false}) {
    isPassword = IsPassword;
    isReinputPassword = IsReinputPassword;
  }
  bool isPassword = false;
  bool isReinputPassword = false;

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              widget.isPassword
                  ? (widget.isReinputPassword ? 'Confirm password' : 'Password')
                  : 'Email address',
              textAlign: TextAlign.left,
              style: TextStyles.h6.copyWith(
                  color: ColorPalette.greyText, fontWeight: FontWeight.w500),
            ),
          ),
          widget.isPassword
              ? TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(),
                )
              : TextFormField(),
        ],
      ),
    );
  }
}
