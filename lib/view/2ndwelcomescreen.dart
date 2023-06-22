
import 'package:flutter/material.dart';
class screen2nd extends StatelessWidget {
  const screen2nd({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Column(
      children: [
        Row(
          children: [
            Container(
              width: mediaQuery.width*1,

            height: mediaQuery.height*0.6,
              
              decoration: BoxDecoration(
                color: Color(0xff0D1C2E),
                image: DecorationImage(
                  image: AssetImage("assets/images/2ndscreen.png"),


                ),
              ),

            )
          ],
        )
      ],
      ),
    );
  }
}