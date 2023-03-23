import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/pages/food_detail.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/images_assets.dart';
import 'package:food_app/values/text_styles.dart';
import 'package:food_app/models/foods.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<foodDetail> Foods = [];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
    CreateFoods();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void CreateFoods() {
    foodDetail f1 = foodDetail(
        title: 'Veggie tomato mix',
        price: 1900,
        deliveryInfo:
            'Veggie tomato mix: Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
        returnPolicy:
            'Veggie tomato mix: All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
        primaryImage: Image.asset(
          ImageAssests.item1,
          width: 183,
          height: 276,
        ));
    Foods.add(f1);
    foodDetail f2 = foodDetail(
        title: 'Egg and cucmber..',
        price: 2300,
        deliveryInfo:
            'Egg and cucmber: Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
        returnPolicy:
            'Egg and cucmber: All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
        primaryImage: Image.asset(
          ImageAssests.item2,
          width: 183,
          height: 276,
        ));
    Foods.add(f2);

    foodDetail f3 = foodDetail(
        title: 'Fried chicken m.',
        price: 18777,
        deliveryInfo:
            'Fried chicken m: Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
        returnPolicy:
            'Fried chicken m: All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
        primaryImage: Image.asset(
          ImageAssests.item3,
          width: 183,
          height: 276,
        ));
    Foods.add(f3);
    foodDetail f4 = foodDetail(
        title: 'Moi-moi and ekpa.',
        price: 2132,
        deliveryInfo:
            'Moi-moi and ekpa.: Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
        returnPolicy:
            'Moi-moi and ekpa: All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
        primaryImage: Image.asset(
          ImageAssests.item4,
          width: 183,
          height: 276,
        ));
    Foods.add(f4);
    foodDetail f5 = foodDetail(
        title: 'Veggie tomato mix5',
        price: 1900,
        deliveryInfo:
            'Veggie tomato mix5: Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
        returnPolicy:
            'Veggie tomato mix: All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
        primaryImage: Image.asset(
          ImageAssests.item5,
          width: 183,
          height: 276,
        ));
    Foods.add(f5);
    foodDetail f6 = foodDetail(
        title: 'Veggie tomato mix6',
        price: 1900,
        deliveryInfo:
            'Veggie tomato mix6: Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
        returnPolicy:
            'Veggie tomato mix: All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
        primaryImage: Image.asset(
          ImageAssests.item6,
          width: 183,
          height: 276,
        ));
    Foods.add(f1);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 65, bottom: 43),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: Icon(FontAwesomeIcons.bars),
                  ),
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: ColorPalette.greyText,
                    ),
                  ),
                ))
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 50),
            child: Container(
              width: 180,
              child: Text(
                'Delicious food for you',
                maxLines: 2,
                style: TextStyles.h3.copyWith(fontSize: 34),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 44),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: ColorPalette.searchBoxBackground),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: InkWell(
                onTap: () {
                  print('object');
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 18,
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text('Search')),
                    )
                  ],
                ),
              )),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(left: 50),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                tabs: [
                  Tab(
                    text: 'Food',
                  ),
                  Tab(
                    text: 'Drinks',
                  ),
                  Tab(
                    text: 'Snacks',
                  ),
                  Tab(
                    text: 'Sauce',
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorPalette.highlightColor,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                FoodsWidget(
                  Foods: Foods,
                ),
                FoodsWidget(
                  Foods: Foods,
                ),
                FoodsWidget(
                  Foods: Foods,
                ),
                FoodsWidget(
                  Foods: Foods,
                ),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
  // ignore: non_constant_identifier_names
}

class FoodsWidget extends StatefulWidget {
  FoodsWidget({super.key, required this.Foods});
  List<foodDetail> Foods = [];

  @override
  State<FoodsWidget> createState() => _FoodsWidgetState();
}

class _FoodsWidgetState extends State<FoodsWidget> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.6);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print(widget.Foods[index].Title);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FoodDetailScreen(food: widget.Foods[index])));
          },
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Positioned(
                top: 85,
                child: Container(
                  height: 270,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: ColorPalette.secondColor),
                  child: Center(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 145, left: 45, right: 50),
                        child: Text(
                          widget.Foods[index]?.Title ?? '',
                          style: TextStyles.h4.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 39),
                        child: Text(
                          'N' + (widget.Foods[index]?.Price ?? 0).toString(),
                          style: TextStyles.h5
                              .copyWith(color: ColorPalette.highlightColor),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              Positioned(
                  child: Container(
                      width: 220,
                      alignment: Alignment.topCenter,
                      child: widget.Foods[index]?.PrimaryImage ?? Container()))
            ],
          ),
        );
      },
      itemCount: widget.Foods.length,
    );
    ;
  }
}
