import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heysappbusiness/constant/button.dart';
import 'package:heysappbusiness/constant/signupheader.dart';
import 'package:heysappbusiness/view/auth/submitted.dart';

import '../../constant/constant.dart';
import '../../controller/personalinfocontroller.dart';

class Lastregistration extends StatelessWidget {
  final personalinfocontroller = Get.put(Personalinfocontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/img/intro1.png'),
            ),
          ),
          child: GetX<Personalinfocontroller>(
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 30,),
                  Signupheader(step: "3",),
                  const SizedBox(height: 100,),
                  const Text("Almost there!",
                    style: TextStyle(fontWeight: FontWeight.w700,
                        fontSize: 32),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Please take a moment to ensure all of the information you provide is correct.",
                    style: TextStyle(fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 30,),
                  Text("Full Legal Name"),
                  const SizedBox(height: 10,),
                  Text("${controller.firstnameController.value.text} ${controller.lastnameController.value.text} "),
                  const SizedBox(height: 10,),
                  Divider(),
                  const SizedBox(height: 30,),
                  Text("Business Name"),
                  const SizedBox(height: 10,),
                  Text("${controller.businessnameController.value.text} "),
                  const SizedBox(height: 10,),
                  Divider(),
                  const SizedBox(height: 30,),
                  Text("Business sector"),
                  const SizedBox(height: 10,),
                  Text("${controller.businesssectorController.value.text} "),
                  const SizedBox(height: 10,),
                  Divider(),
                  const SizedBox(height: 30,),
                  Text("Residential Address"),
                  const SizedBox(height: 10,),
                  Text("${controller.lastnameController.value.text} ${controller.cityController.value.text} \n "
                      "${controller.stateController.value.text} ${controller.countryController.value.text}"),

                  const SizedBox(height: 200,),
                  Container(
                    height: 60,
                    child:  Button(
                      buttoncolor: primarycolour,
                      textcolor: Colors.white,
                      name: "Continue",
                      press: (){
                        Get.to(()=> Submitted());
                      },
                    ),
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
