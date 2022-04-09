import 'package:flutter/material.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';


class Summited extends StatelessWidget {
  const Summited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 60,),
          Image.asset("assets/img/detailsupload.png",
            height: 150,
          ),
          SizedBox(height: 30,),
          Text("Thanks! We'll review your documents within 10 minutes",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          Text("Get ready to start using Heysap for your financial needs",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70,),
          Container(
            height: 50,
            child: Button(
              textcolor: Colors.white,
              buttoncolor: primarycolour,
              name: "Got it",
              press: (){

              },
            ),
          ),
          SizedBox(height: 150,)
        ],
      ),
    );
  }
}
