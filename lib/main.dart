import 'package:flutter/material.dart';
import 'package:food_app/pages/loading.dart';
import 'package:food_app/routes.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/local_storage_helper.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Food App',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            scaffoldBackgroundColor: ColorPalette.primaryColor),
        home: LoadingPage(),
        routes: routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}
