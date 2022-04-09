import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/constant/constant.dart';
import 'package:heysappbusiness/view/dashboard/dashboard.dart';
import 'package:heysappbusiness/view/dashboard/newsfeed.dart';
import 'package:heysappbusiness/view/store/store.dart';

class Bottomnavigator extends StatelessWidget {
  final int selected;
  const Bottomnavigator({Key? key, this.selected=1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              child: item("Home",1),
            onTap: (){
                if (selected == 1) {
                  return;
                }
                Get.to(()=>Dashboard());
            },
          ),
          GestureDetector(
              child: item("Store",2),
            onTap: (){
                Get.to(()=>Store());
            },
          ),
          item("Wallet",3),
          GestureDetector(
              child: item("Feed",4),
            onTap: (){
              if (selected == 4) {
                return;
              }
              Get.to(()=>Newsfeed());
            },
          ),
          item("Menu",5),
        ],
      ),
    );
  }
  Widget item(name,position){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/img/${position == selected?'selected${name.toLowerCase()}':name.toLowerCase()}.png",
          height: 23.77, width: 25.02,
        ),
        SizedBox(height: 10,),
        Text(name,
          style: TextStyle(fontSize: 10,
              fontWeight: FontWeight.w500, color:position == selected?primarycolour:Color(0xffDDDDDD) ),
        ),
      ],
    );
  }
}
