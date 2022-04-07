import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/view/auth/businesscategory.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';

class Submitted extends StatelessWidget {
  const Submitted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.arrow_back_ios)
              ],
            ),
            Spacer(),
            Image.asset("assets/img/success.png",
              height: 144, width: 144,
            ),
            SizedBox(height: 30,),
            Text("Thanks! We'll review your \ndocuments within 1 hour",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Text("Get ready to start using Heysap for your\n business needs",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70,),
            Container(
              height: 60,
              child: Button(
                buttoncolor: primarycolour,
                textcolor: Colors.white,
                name: "Got it",
                press: (){
                  Get.to(()=>Businesscategory());
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
