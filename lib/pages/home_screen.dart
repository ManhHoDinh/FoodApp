import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/values/colors.dart';
import 'package:food_app/values/images_assets.dart';
import 'package:food_app/values/text_styles.dart';
import 'package:food_app/widgets/models/foods.dart';
import 'package:hive_flutter/adapters.dart';

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
          width: 164,
          height: 164,
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
          width: 164,
          height: 164,
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
          width: 164,
          height: 164,
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
          width: 164,
          height: 164,
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
          width: 164,
          height: 164,
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
          width: 164,
          height: 164,
        ));
    Foods.add(f1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                PageView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 60,
                            child: Container(
                              width: 220,
                              height: 270,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: ColorPalette.secondColor),
                              child: Center(
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 145, left: 45, right: 50),
                                    child: Text(
                                      Foods[index]?.Title ?? '',
                                      style: TextStyles.h4.copyWith(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, bottom: 39),
                                    child: Text(
                                      'N' +
                                          (Foods[index]?.Price ?? 0).toString(),
                                      style: TextStyles.h5.copyWith(
                                          color: ColorPalette.highlightColor),
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Positioned(
                              child: Container(
                                  alignment: Alignment.topCenter,
                                  child: Foods[index]?.PrimaryImage ??
                                      Container()))
                        ],
                      ),
                    );
                  },
                  itemCount: Foods.length,
                ),
                Text('Person'),
                Text('Person'),
                Text('Person')
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
