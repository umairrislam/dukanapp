// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({super.key});

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
                    child: TabBar(tabs: [
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
                      // Tab(
                      //   child: Text(
                      //     'Rating',
                      //     style: TextStyle(
                      //         decoration: TextDecoration.none,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.bold,
                      //         color: Color(0xff000000).withOpacity(0.3)),
                      //   ),
                      // ),
                    ])),
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
                            color: Colors.amber,
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Product Code: CB57544 ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff000000).withOpacity(.4)),
                            ),),
                        SizedBox(
                          height: 15,
                        ),

                        //PRODUCT NAME AND ADDING BOX
                         Container(
                            height: mediaQuery.height * .06,
                            width: mediaQuery.width * 1,
                            padding: EdgeInsets.only(left: 30),
                            color: Colors.amber,
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

                                Container(),
                              ],
                            ),),
                      ],
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
