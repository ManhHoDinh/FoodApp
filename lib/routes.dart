import 'package:flutter/material.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/launching.dart';
import 'package:food_app/pages/loading.dart';
import 'package:food_app/pages/sign_in_up.dart';

final Map<String, WidgetBuilder> routes = {
  LoadingPage.routeName: (context) => LoadingPage(),
  LaunchingPage.routeName: (context) => LaunchingPage(),
   HomePage.routeName: (context) => HomePage(),
  SignInOrUpPage.routeName: (context) => SignInOrUpPage(),
};
