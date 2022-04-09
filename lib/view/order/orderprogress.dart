import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';

class Orderprogress extends StatelessWidget {
  const Orderprogress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
                child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
              onTap: (){
                  Get.back();
              },
            ),
            const Spacer(),
            const Text("Order progress",
              style: TextStyle(color: Colors.black,
                  fontSize: 15, fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
          ],
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            item(true, "Order confirmation"),
            item(false, "Your order is processing"),
            item(false, "Your order is on it's way to you"),
            item(false, "Successfully delivered"),
            item(false, "Done"),
            SizedBox(height: 150,),
            Container(
              alignment: Alignment.center,
              height: 64,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xffFFD500),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Text("Update",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              height: 64,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: primarycolour,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Text("Delivered",
                style: TextStyle(color: Colors.white,
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget item(color, text){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(color?0xff30A534:0xffffffff),
              border: Border.all(color: Color(color?0xffffffff:0xff707070)),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 23,
            width: 23,
          ),
          SizedBox(width: 20,),
          Text(text,
            style: TextStyle(
              color: Color(color?0xff30A534:0xff707070),
              fontSize: 15, fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}

