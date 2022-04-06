import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../../constant/button.dart';
import '../../constant/constant.dart';
import '../../controller/verificationcontroller.dart';
import '../../request/apis.dart';
import 'personalinfo.dart';

class Verification extends StatelessWidget {
  final verificationcontroller = Get.put(Verificationcontroller());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/img/intro1.png'),
              ),
            ),
            child: GetX<Verificationcontroller>(
              builder: (controller) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Column(
                        //   mainAxisSize: MainAxisSize.min,
                        children:  const [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enter A 4 Digit Number That Was Sent \nTo your phone or email",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            PinCodeTextField(
                              autofocus: true,
                              controller: controller.emailController.value,
                              hideCharacter: false,
                              highlight: false,
                              highlightColor: Colors.black,
                              defaultBorderColor: Colors.black,
                              hasTextBorderColor: Colors.black,
                              highlightPinBoxColor: Colors.black,
                              maxLength: 4,
                              // hasError: hasError,
                              maskCharacter: "😎",
                              onTextChanged: (text) {
                                  controller.show.value = false;
                              },
                              onDone: (text) {
                                  controller.show.value = true;
                                print("DONE $text");
                                // print("DONE CONTROLLER ${controller.text}");
                              },
                              pinBoxWidth: 45,
                              pinBoxHeight: 64,
                              hasUnderline: false,
                              wrapAlignment: WrapAlignment.spaceAround,
                              pinBoxDecoration: ProvidedPinBoxDecoration
                                  .underlinedPinBoxDecoration,
                              pinTextStyle:
                                  const TextStyle(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w500),
                              pinTextAnimatedSwitcherTransition:
                                  ProvidedPinBoxTextAnimation
                                      .scalingTransition,
                              //                    pinBoxColor: Colors.green[100],
                              pinTextAnimatedSwitcherDuration:
                                  const Duration(milliseconds: 300),
                              //                    highlightAnimation: true,
                              highlightAnimationBeginColor: Colors.white,
                              highlightAnimationEndColor: Colors.white12,
                              keyboardType: TextInputType.number,
                            ),
                            Visibility(
                              child: Image.asset(
                                "assets/img/done.png",
                                height: 25,
                              ),
                              visible: controller.show.value,
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        height: 80,
                        child: Button(
                          name: "Verify",
                          fullwidth: true,
                          textcolor: Colors.white,
                          buttoncolor: const Color(0xff2A65DC),
                          isloading: controller.isLoading.value,
                          loader: loadingWidget,
                          press: () {
                            if (otpcode == controller.emailController.value.text) {
                              if(controller.create.value) {
                                Get.to(()=> Personalinfo());
                              }else{
                                // Get.to(()=> Resetpasscode());
                              }
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.isLoading.value || controller.timeout.isFalse) {
                            return;
                          }
                          controller.initiate();
                        },
                        child: Text(
                          "Re-Send Code in ${controller.minute} : ${controller.start}",
                          style: const TextStyle(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                );
              }
            ),
          )),
    );
  }

}
