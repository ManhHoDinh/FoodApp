import 'package:flutter/material.dart';
import 'package:food_app/pages/sign_in_up.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/images_assets.dart';
import 'package:food_app/values/text_styles.dart';
import 'package:food_app/widgets/button_widget.dart';

class LaunchingPage extends StatelessWidget {
  const LaunchingPage({super.key});
  static const routeName = 'launching_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: ColorPalette.highlightColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 56, left: 49),
                  height: 73,
                  width: 73,
                  decoration: BoxDecoration(
                      color: ColorPalette.secondColor,
                      borderRadius: BorderRadius.all(Radius.circular(73))),
                  child: Image.asset(
                    ImageAssests.logoLauching,
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 51, top: 31),
                  child: Text(
                    'Food for Everyone',
                    style: TextStyles.h1.copyWith(
                        fontSize: 65,
                        color: ColorPalette.secondColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFonts.karla),
                  ),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                              right: 0,
                              top: 100,
                              child:
                                  Image.asset(ImageAssests.Lauching_backg_m)),
                          Positioned(
                              left: 0,
                              child:
                                  Image.asset(ImageAssests.Lauching_backg_w)),
                        ],
                      ),
                      Positioned(
                          bottom: 36,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: CustomButton(
                              () {
                                Navigator.of(context)
                                    .pushNamed(SignInOrUpPage.routeName);
                              },
                              Text: 'Get starteed',
                              Color: ColorPalette.secondColor,
                            ),
                          ))
                    ],
                  ))
            ],
          )),
    );
  }
}
