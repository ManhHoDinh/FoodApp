import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/models/foods.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/text_styles.dart';
import 'package:food_app/widgets/button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodDetailScreen extends StatefulWidget {
  FoodDetailScreen({super.key, this.food});
  foodDetail? food;
  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(FontAwesomeIcons.chevronLeft),
                ),
                GestureDetector(
                  child: Icon(FontAwesomeIcons.heart),
                ),
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: PageView.builder(
                        controller: _pageController,
                        itemCount: widget.food!.SubImage!.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Image.asset(
                              widget.food!.PrimaryImage ?? '',
                              width: 405,
                              height: 270,
                            );
                          }
                          return Image.asset(
                            widget.food!.SubImage![index - 1] ?? '',
                            width: 405,
                            height: 270,
                          );
                        }),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SmoothPageIndicator(
                          controller: _pageController, // PageController
                          count: widget.food!.SubImage!.length + 1,
                          effect: SlideEffect(
                              dotHeight: 12,
                              dotWidth: 12,
                              dotColor: ColorPalette.greyText,
                              activeDotColor: ColorPalette.highlightColor),
                          // your preferred effect
                          onDotClicked: (index) {}),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.food!.Title ?? '',
              style: TextStyles.h1,
            ),
            Text(
              'N' + widget.food!.Price.toString() ?? '',
              style: TextStyles.h2.copyWith(color: ColorPalette.highlightColor),
            ),
            Container(
              padding: EdgeInsets.only(top: 43, bottom: 5),
              width: double.infinity,
              child: Text(
                'Delivery Info',
                style: TextStyles.h3,
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              widget.food!.DeliveryInfo ?? '',
              style: TextStyles.h5.copyWith(color: ColorPalette.greyText),
            ),
            Container(
                padding: EdgeInsets.only(top: 30, bottom: 5),
                width: double.infinity,
                child: Text(
                  'Return policy',
                  style: TextStyles.h3,
                )),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                widget.food!.ReturnPolicy ?? '',
                style: TextStyles.h5.copyWith(color: ColorPalette.greyText),
              ),
            ),
            CustomButton(
              () {},
              Text: 'Add to cart',
            )
          ]),
        ),
      ),
    );
  }
}
