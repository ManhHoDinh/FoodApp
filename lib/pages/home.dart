import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text("Home")),
    );
  }
}
