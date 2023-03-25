import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/models/foods.dart';
import 'package:food_app/widgets/appbar_widget.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key, required this.foods});
  List<foodDetail> foods;
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(left: 40, top: 40),
              child: AppBarWidget(
                child: Text('Search'),
              ))
        ]),
      ),
    );
  }
}
