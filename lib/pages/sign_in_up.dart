import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/main_screen.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/images_assets.dart';
import 'package:food_app/values/text_styles.dart';
import 'package:food_app/widgets/button_widget.dart';
import 'package:food_app/widgets/text_input_widget.dart';

class SignInOrUpPage extends StatefulWidget {
  const SignInOrUpPage({super.key});
  static const routeName = 'signinup_page';
  @override
  State<SignInOrUpPage> createState() => _SignInOrUpPageState();
}

class _SignInOrUpPageState extends State<SignInOrUpPage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Login'),
    Tab(text: 'Sign-up'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(320),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: ColorPalette.secondColor,
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    child: Center(child: Image.asset(ImageAssests.logo_login)),
                  )),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: ColorPalette.highlightColor,
                    tabs: [
                      Container(
                        width: 100,
                        padding: EdgeInsets.only(bottom: 24),
                        child: Text(
                          "Login",
                          style: TextStyles.h5
                              .copyWith(color: ColorPalette.blackText),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 100,
                        padding: EdgeInsets.only(bottom: 24),
                        child: Text(
                          "Sign-up",
                          style: TextStyles.h5
                              .copyWith(color: ColorPalette.blackText),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          Tab(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 64),
                      alignment: Alignment.topLeft,
                      child: InputTextWidget(
                        IsPassword: false,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 64),
                        child: InputTextWidget(
                          IsPassword: true,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 34),
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          print('hello');
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyles.h4
                              .copyWith(color: ColorPalette.highlightColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ]),
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    child: CustomButton(
                        Color: ColorPalette.highlightColor, Text: 'Login', () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          MainScreen.routeName, (routes) => false);
                    }),
                  )
                ],
              ),
            ),
          ),
          Tab(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 64),
                      alignment: Alignment.topLeft,
                      child: InputTextWidget(
                        IsPassword: false,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 49),
                        child: InputTextWidget(
                          IsPassword: true,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 49),
                        child: InputTextWidget(
                          IsPassword: true,
                          IsReinputPassword: true,
                        )),
                  ]),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: CustomButton(
                        Color: ColorPalette.highlightColor,
                        Text: 'Register',
                        () {}),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
