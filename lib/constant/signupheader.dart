import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signupheader extends StatelessWidget {
  String step;
  Signupheader({Key? key, this.step = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: const Icon(
              Icons.arrow_back_ios
          ),
          onTap: (){
            Get.back();
          },
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(const Radius.circular(20))
          ),
          child:  Text("Step $step of 3"),
        )
      ],
    );
  }
}
