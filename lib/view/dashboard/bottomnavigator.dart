import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/constant/constant.dart';
import 'package:heysappbusiness/view/dashboard/dashboard.dart';

class Bottomnavigator extends StatelessWidget {
  final int selected;
  const Bottomnavigator({Key? key, this.selected=1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          item("Store",2),
          item("Wallet",3),
          item("Feed",4),
          item("Menu",5),
        ],
      ),
    );
  }
  Widget item(name,position){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/img/${position == selected?'selected${name}':name}.png",
          height: 23.77, width: 25.02,
        ),
        SizedBox(height: 10,),
        Text(name,
          style: TextStyle(fontSize: 10,
              fontWeight: FontWeight.w500, color:position == selected?primarycolour:Color(0xffDDDDDD) ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
