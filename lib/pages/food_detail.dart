import 'package:flutter/material.dart';
import 'package:food_app/models/foods.dart';
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
      body: Column(children: [
        Row(
          children: [],
        ),
        widget.food!.PrimaryImage ?? Container(),
        SmoothPageIndicator(
            controller: _pageController, // PageController
            count: 6,
            effect: SlideEffect(),
            // your preferred effect
            onDotClicked: (index) {})
      ]),
    );
  }
}
