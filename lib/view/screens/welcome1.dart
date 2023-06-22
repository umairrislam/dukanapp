import 'package:flutter/material.dart';
import 'package:muproject/view/screens/welcome2.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
       final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body:OrientationBuilder(
    builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.portrait)
          return Expanded(
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
                        SizedBox(height: mediaQuery.height * .07),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Welcome2(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Get started',
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0), // Set the radius value here
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0D1C2E)),
     fixedSize: MaterialStateProperty.all<Size>(
      Size(mediaQuery.width * .9, mediaQuery.height * .07), ) // Set the background color here
  ),
 
                        )
                      ],
                    ),
                  ),
          
                  SizedBox(height: mediaQuery.height * .02),
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
       );
      
      else
       return SingleChildScrollView(
        scrollDirection: Axis.vertical,
         child: Container(
           height: mediaQuery.height * 1,
           width: mediaQuery.width * 1,
           child: Column(
             children: [
               Container(
                 height: mediaQuery.height * .5,
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
           
               SizedBox(height: mediaQuery.height * .06),
                    Container(
                      height: mediaQuery.height * 0.3,
                      child: Column(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: mediaQuery.height * .002),
                          Text(
                            "Join with us",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: mediaQuery.height * .01),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Welcome2(),
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ),
                            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0), // Set the radius value here
              ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0D1C2E)),
               fixedSize: MaterialStateProperty.all<Size>(
              Size(mediaQuery.width * .4, mediaQuery.height * .06), ) // Set the background color here
              ),
          
                          )
                        ],
                      ),
                    ),
         
                    SizedBox(height: mediaQuery.height * .02),
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
       );
  })
    );
  }
}