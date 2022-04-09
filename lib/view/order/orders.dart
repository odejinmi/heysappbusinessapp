import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heysappbusiness/view/order/orderdetails.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30,),
         items("HFO-714Z","₦ 4,800.00",false),
         items("HFO-714Z","₦ 4,800.00",false),
         items("HFO-714Z","₦ 4,800.00",false),
         items("HFO-714Z","₦ 4,800.00",true),
         items("HFO-714Z","₦ 4,800.00",true),
         items("HFO-714Z","₦ 4,800.00",true),
        ],
      ),
    );
  }
  Widget items(name,amount, status){
    return GestureDetector(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400,
                      color: status?Color(0xffBEBEBE):Colors.black
                    ),
                  ),
                  Text("Delivery",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400,
                        color: status?Color(0xffBEBEBE):Colors.black
                    ),
                  ),
                ],
              ),
              const Spacer(),
               Text(amount,
                style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w400,
                    color: status?Color(0xffBEBEBE):Colors.black
                ),
              ),
              const SizedBox(width: 20,),
              Icon(Icons.arrow_forward_ios,
                  color: status?Color(0xffBEBEBE):Colors.black)
            ],
          ),
          const SizedBox(height: 15,),
          const Divider(),
          const SizedBox(height: 15,),
        ],
      ),
      onTap: (){
        Get.to(()=>Orderdetails());
      },
    );
  }
}
