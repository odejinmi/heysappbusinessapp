import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';


import '../../constant/button.dart';
import '../../constant/constant.dart';
import '../../controller/selectcontroller.dart';
import '../../controller/signupcontroller.dart';
import '../../request/apis.dart';
import 'verification.dart';

class Newsignup extends StatelessWidget {
  final signupcontroller = Get.put(Signupcontroller());
  final selectcountrycontroller = Get.put(Selectcountrycontroller());
  Size? size;
  
  void positiontrue(){
    signupcontroller.buttonposition.value = true;
    signupcontroller.right.value =2;
    signupcontroller.left.value =size!.width/2-30;
  }
  void positionfalse(){
    signupcontroller.buttonposition.value = false;
    signupcontroller.right.value =size!.width/2-30;
    signupcontroller.left.value =2;
  }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/img/intro1.png'),
          ),
        ),
        child: GetX<Signupcontroller>(
          builder: (controller) {
            return Form(
              key: controller.formKey.value,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 80,),
                    Row(
                      children: [
                        Container(
                          height: 30,width: 30,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              image: DecorationImage(
                                image: Svg(selectcountrycontroller.countryname.value,
                                  source: SvgSource.network,
                                ),
                              )
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Text(selectcountrycontroller.countryflag.value,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    const Text("Hello 👋🏾  Enter your phone or email",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 40,),
                    GestureDetector(
                      onTap: (){
                          if (controller.buttonposition.isFalse) {
                            positiontrue();
                          }else{
                            positionfalse();
                          }
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Container(
                          child: Stack(
                            children: [
                              GestureDetector(
                                onHorizontalDragEnd: (d){
                                    if (controller.left.value >=size!.width/4) {
                                      positiontrue();
                                      // widget.changevalue(true);
                                    }else {
                                      positionfalse();
                                      // widget.changevalue(false);
                                    }
                                },
                                onHorizontalDragUpdate: (d){
                                    if(d.delta.dx.isNegative){
                                      if (controller.left.value >= 2) {
                                        controller.right.value +=1;
                                        controller.left.value -=1;
                                      }
                                    }else{
                                      if (controller.right.value >= 2) {
                                        controller.right.value -=1;
                                        controller.left.value +=1;
                                      }
                                    }
                                },
                                child: Container(
                                  width: size!.width/2,
                                  margin: EdgeInsets.only(top: 2, bottom: 2,left: controller.left.value,right: controller.right.value),
                                  decoration: const BoxDecoration(
                                      color: primarycolour,
                                      borderRadius: const BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Text("Phone",
                                      style: TextStyle(
                                        color: controller.buttonposition.value?Colors.black:Colors.white
                                      ),
                                    ),
                                    const Spacer(flex: 2,),
                                    Text("Email",
                                      style: TextStyle(
                                          color: !controller.buttonposition.value?Colors.black:Colors.white
                                      ),
                                    ),
                                    const Spacer()
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70,),
                    Row(
                      children: [
                        Text(
                          controller.buttonposition.value?"Email Address":" ",
                          style: const TextStyle(
                            fontSize: 15,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Visibility(
                              visible: !controller.buttonposition.value,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "NG +234",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(width: 10,),
                                  Container(
                                    width: 1,
                                    height: 40,
                                    // height: double.maxFinite,
                                    color: Colors.grey,
                                  ),
                                ],
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          Visibility(
                            visible: controller.buttonposition.value,
                            child: Expanded(
                                child: TextFormField(
                                  // textAlign: !change ? TextAlign.start : TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: "name@mail.com",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black),
                                    // suffixIcon: Icon(
                                    //   Icons.person_pin_circle_rounded,
                                    //   color: Colors.white,
                                    // ),
                                    // enabledBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                    // focusedBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                    // errorBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                    // focusedErrorBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: controller.emailController.value,
                                  onChanged: (value) {},
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "This field can't be empty";
                                    }
                                    return null;
                                  },
                                )
                            ),
                          ),
                          Visibility(
                            visible: !controller.buttonposition.value,
                            child: Expanded(
                                child: TextFormField(
                                  // textAlign: !change ? TextAlign.start : TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: "Phone Number",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black),
                                    // suffixIcon: Icon(
                                    //   Icons.person_pin_circle_rounded,
                                    //   color: Colors.white,
                                    // ),
                                    // enabledBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                    // focusedBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                    // errorBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                    // focusedErrorBorder: OutlineInputBorder(
                                    //   borderRadius:
                                    //   BorderRadius.all(Radius.circular(15.0)),
                                    //   borderSide: BorderSide(color: Colors.white),
                                    // ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                  controller: controller.emailController.value,
                                  onChanged: (value) {},
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "This field can't be empty";
                                    }
                                    return null;
                                  },
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60,),
                    Container(
                      height: 70,
                      child: Button(
                        loader: loadingWidget,
                        isloading: controller.isLoading.value,
                        buttoncolor: primarycolour,
                        textcolor: Colors.white,
                        name: "Next",
                        press: (){
                          if (controller.formKey.value.currentState!.validate()) {
                            controller.initiate();
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
