// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key});

  @override
  State<DisplayProduct> createState() => _DisplayProductState();
}

class _DisplayProductState extends State<DisplayProduct>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Details',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff111260)),
                ),
              ),
              Tab(
                child: Text(
                  'Related',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000).withOpacity(0.3)),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              height: mediaQuery.height * .85,
              width: mediaQuery.width * 1,
              color: Color(0xffFFFFFF),
              child: Column(
                children: [
                  Expanded(
                    child: TabBarView(children: [
                      Column(
                        children: [
                          //DISPLAY PRODUCT
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            height: mediaQuery.height * .3,
                            width: mediaQuery.width * .8,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/pizza.png'))),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          //PRODUCT CODE
                          Container(
                            height: mediaQuery.height * .03,
                            width: mediaQuery.width * 1,
                            padding: EdgeInsets.only(left: 15),
                            //color: Colors.amber,
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Product Code: CB57544 ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff000000).withOpacity(.4)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          //PRODUCT NAME AND ADDING BOX
                          Container(
                            height: mediaQuery.height * .04,
                            width: mediaQuery.width * 1,
                            padding: EdgeInsets.only(left: 15),
                            // color: Colors.amber,
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Text(
                                  'Mixed-Chicken Pizza ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff111260)),
                                ),

                                //Container for add items

                                Container(
                                  margin: EdgeInsets.only(left: 35),
                                  height: 28,
                                  width: 71,
                                  decoration: BoxDecoration(
                                      color: Color(0xffC0E862),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.minus,
                                        size: 13,
                                        color: Color(0xffffffff),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xffffffff)),
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.plus,
                                        size: 13,
                                        color: Color(0xffffffff),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //PRODUCT Delievery Time
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            height: mediaQuery.height * .03,
                            width: mediaQuery.width * 1,
                            padding: EdgeInsets.only(left: 15),
                            //color: Colors.amber,
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Delievery Time: 30 Minutes ',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff111260),
                              ),
                            ),
                          ),

                          //Review Stars and Rating
                          SizedBox(
                            height: 2,
                          ),

                          Container(
                            height: mediaQuery.height * .05,
                            width: mediaQuery.width * 1,
                            padding: EdgeInsets.only(left: 8),
                            //color: Color(0xff000000).withOpacity(.3),
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                //Container for add items
                                RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    tapOnlyMode: false,
                                    itemCount: 5,
                                    itemSize: 36,
                                    itemPadding: EdgeInsets.only(left: 3.0),
                                    itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                    onRatingUpdate: (rating) {}),
                              ],
                            ),
                          ),

                          //Different Sizes of One Product
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Size',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff111260),
                                  ),
                                ),
                                Text(
                                  'Size Guide',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8F959E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ProductSizeBoxes(
                                  mediaQuery: mediaQuery,
                                  textSize: 'S',
                                  boxColor: Color(0xffF5F6FA),
                                ),
                                ProductSizeBoxes(
                                    mediaQuery: mediaQuery,
                                    textSize: 'M',
                                    boxColor:
                                        Color(0xff111260).withOpacity(.1)),
                                ProductSizeBoxes(
                                    mediaQuery: mediaQuery,
                                    textSize: 'L',
                                    boxColor: Color(0xffF5F6FA)),
                                ProductSizeBoxes(
                                    mediaQuery: mediaQuery,
                                    textSize: 'XL',
                                    boxColor: Color(0xffF5F6FA)),
                                ProductSizeBoxes(
                                    mediaQuery: mediaQuery,
                                    textSize: '2XL',
                                    boxColor: Color(0xffF5F6FA)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: mediaQuery.width * 1,
                            
                            // color: Colors.black54,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Details & Ingredient ',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color(0xff111260).withOpacity(.6)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Meat Lovers is filled with toppings of sliced ​​beef sausage, minced beef, beef burger, and chicken sausage. In one bite, you can taste a variety of processed meats that are many and dense. Especially the minced meat which still has fiber in it.This pizza is very tasty. you can buy it in very cheap prices.order now otherwise someone else buy it.Meat Lovers is filled with toppings of sliced ​​beef sausage, minced beef, beef burger, and chicken sausage.',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff46474B).withOpacity(.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      //second tab content
                      Container(
                        color: Colors.tealAccent,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(top: 5),
            color: Color(0xffffffff),
            width: double.infinity,
            height: mediaQuery.height * .18,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1D1E20),
                        ),
                      ),
                      Text(
                        "\$12",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1D1E20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'With Delivery Charges',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff46474B).withOpacity(.7),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff000000).withOpacity(.2),
                ),
                SizedBox(height: 2),

                //Buttons of Order and Share
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: mediaQuery.height * .08,
                      width: mediaQuery.width * .44,
                      // padding: EdgeInsets.only(left: 30),
                    
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: Color(0xff01BC87),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/images/🦆 icon _hexagon dice_.png'),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Order',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //button2
                    Container(
                      height: mediaQuery.height * .08,
                      width: mediaQuery.width * .44,
                      // padding: EdgeInsets.only(left: 30),

                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: Color(0xff019DCD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/images/🦆 icon _share android_.png',height: 33,),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductSizeBoxes extends StatelessWidget {
  ProductSizeBoxes(
      {required this.mediaQuery,
      required this.textSize,
      required this.boxColor});

  final Size mediaQuery;
  final String textSize;
  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.height * .07,
      width: mediaQuery.width * .14,
      // padding: EdgeInsets.only(left: 30),

      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          textSize,
          textAlign: TextAlign.center,
          //textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff1D1E20),
          ),
        ),
      ),
    );
  }
}
