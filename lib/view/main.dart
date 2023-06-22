import 'package:flutter/material.dart';
import 'package:muproject/view/2ndwelcomescreen.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcomescreen(),
  ));
}

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 252, 252),
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            height: mediaQuery.height * 1,
            width: mediaQuery.width * 1,
            child: Column(
              children: [
                Container(
                  height: mediaQuery.height * .6,
                  width: mediaQuery.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    color: Color(0xffc5EB6D),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/welcomescreen.png'),
                    height: 50,
                    width: 50,
                  ),
                ),
                // Row(
        
                //   children: [
                //     Container(
                //       padding: EdgeInsets.all(40.0),
        
                //       width: mediaQuery.width*1,
                //       height: mediaQuery.height*0.6,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(20.0),
                //     bottomRight: Radius.circular(20.0),
                //   ),
                //         color: Color(0xffC5EB6D),
                //         image: DecorationImage(
                //           image: AssetImage('assets/images/welcomescreen.png'),
        
                //           )
                //       ),
        
                //     ),
                //   ],
                // ),
                SizedBox(height: mediaQuery.height * .03),
                Container(
                  height: mediaQuery.height * 0.3,
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: mediaQuery.height * .002),
                      Text(
                        "Join with us",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: mediaQuery.height * .04),
                      Container(
                        width: mediaQuery.width * .5,
                        height:40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.green],
                           
                          ),
                          
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => screen2nd(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Get started',
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        
                SizedBox(height: 4),
                Container(
                  margin: EdgeInsets.only(top:10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                    children: [
                      Text(
                        'Prev',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffC5EB6D),
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xffC5EB6D),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffC5EB6D),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height * .001),
          ],
            ),
          ),
       ),
      ),
      );
  }
}
