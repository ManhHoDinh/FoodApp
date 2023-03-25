import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(FontAwesomeIcons.chevronLeft),
        ),
        Expanded(
          child: child,
        )
      ],
    );
  }
}
