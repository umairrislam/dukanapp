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
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: mediaQuery.height * 1,
            width: mediaQuery.width * 1,
            color: Color(0xffFFFFFF),
            child: Column(
              children: [
                Container(
                  height: mediaQuery.height * .07,
                  width: mediaQuery.width * 1,
                  //color: Colors.black12.withOpacity(.2),
                  child: TabBar(
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
                ),
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
                          padding: EdgeInsets.only(left: 30),
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
                          padding: EdgeInsets.only(left: 30),
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
                          padding: EdgeInsets.only(left: 30),
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
                          padding: EdgeInsets.only(left: 20),
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
                              // Padding(
                              //   padding: const EdgeInsets.only(left:10.0),
                              //   child: Text(
                              //           '4.5',
                              //           style: TextStyle(
                              //               fontSize: 28,
                              //               fontWeight: FontWeight.bold,
                              //               color: Color(0xff111260)),
                              //         ),
                              // ),
                            ],
                          ),
                        ),

                        //Different Sizes of One Product
                        SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 25),
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
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              ProductSizeBoxes(mediaQuery: mediaQuery,textSize: 'S',boxColor: Color(0xffF5F6FA),),
                              ProductSizeBoxes(mediaQuery: mediaQuery,textSize: 'M',boxColor: Color(0xff111260).withOpacity(.1)),
                              ProductSizeBoxes(mediaQuery: mediaQuery,textSize: 'L',boxColor: Color(0xffF5F6FA)),
                              ProductSizeBoxes(mediaQuery: mediaQuery,textSize: 'XL',boxColor: Color(0xffF5F6FA)),
                              ProductSizeBoxes(mediaQuery: mediaQuery,textSize: '2XL',boxColor: Color(0xffF5F6FA)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                           Text(
                                'Details & Ingredient ',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff111260)),
                              ),
                              SizedBox(height: 10,),
                              Text(
                            'Product Code: CB57544 ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff46474B),),
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
      ),
    );
  }
}

class ProductSizeBoxes extends StatelessWidget {
   ProductSizeBoxes({required this.mediaQuery, required this.textSize, required this.boxColor});

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
