import 'package:flutter/material.dart';
import 'package:food_app/pages/main_screen.dart';
import 'package:food_app/pages/launching.dart';
import 'package:food_app/pages/loading.dart';
import 'package:food_app/pages/sign_in_up.dart';

final Map<String, WidgetBuilder> routes = {
  LoadingPage.routeName: (context) => LoadingPage(),
  LaunchingPage.routeName: (context) => LaunchingPage(),
  MainScreen.routeName: (context) => MainScreen(),
  SignInOrUpPage.routeName: (context) => SignInOrUpPage(),
};
