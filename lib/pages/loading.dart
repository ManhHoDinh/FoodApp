import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/launching.dart';
import 'package:food_app/pages/sign_in_up.dart';

import 'package:food_app/values/images_assets.dart';
import 'package:food_app/values/local_storage_helper.dart';

import '../values/colors.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});
  static const routeName = 'loading_page';
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NextPage();
  }

  // ignore: non_constant_identifier_names
  void NextPage() async {
    await Future.delayed(Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    final ignoreIntro = LocalStorageHelper.getValue(localStorage.ignoreIntro) as bool?;
    final isLogged = LocalStorageHelper.getValue(localStorage.isLogged) as bool?;
    // ignore: unnecessary_null_comparison
    if (ignoreIntro != null && ignoreIntro) {
      if(isLogged != null && isLogged)
      {
         Navigator.of(context).pushNamed(HomePage.routeName);
      }
      else
      {
        Navigator.of(context).pushNamed(SignInOrUpPage.routeName);
      }
    } else {
      LocalStorageHelper.setValue(localStorage.ignoreIntro, true);
      Navigator.of(context).pushNamed(LaunchingPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImageAssests.loadingBackGround),
            Center(
              child: Container(
                height: 262,
                width: 262,
                decoration: BoxDecoration(
                  color: ColorPalette.secondColor,
                  borderRadius: BorderRadius.all(Radius.circular(262)),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        ImageAssests.logoloadingBackGround,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 150),
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorPalette.highlightColor),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
