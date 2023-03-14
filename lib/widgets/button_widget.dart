import 'package:flutter/material.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/text_styles.dart';

class CustomButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CustomButton(VoidCallback OnTap,
      {super.key, Text = '', Color = ColorPalette.highlightColor}) {
    text = Text;
    onTap = OnTap;
    color = Color;
  }
  late String text = '';
  late VoidCallback onTap = () {};
  late Color color = ColorPalette.highlightColor;
  Color textColor = ColorPalette.highlightColor;
  @override
  Widget build(BuildContext context) {
    if (color == ColorPalette.highlightColor) {
      textColor = ColorPalette.secondColor;
    }
    return Material(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.cyan,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          width: 314,
          height: 70,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyles.h4.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
