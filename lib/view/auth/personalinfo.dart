import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heysappbusiness/constant/button.dart';
import 'package:heysappbusiness/constant/signupheader.dart';
import 'package:heysappbusiness/view/auth/businessaddress.dart';

import '../../constant/constant.dart';
import '../../controller/personalinfocontroller.dart';

class Personalinfo extends StatelessWidget {
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
                  Signupheader(step: "1",),
                  const SizedBox(height: 100,),
                  const Text("Personal Info",
                    style: TextStyle(fontWeight: FontWeight.w700,
                        fontSize: 32),
                  ),
                  const SizedBox(height: 20,),
                  const Text("We ask your personal information to verify your application",
                    style: TextStyle(fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: const Color(0xffF4F5F7),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "First name",
                        border: InputBorder.none,
                        fillColor: const Color(0xffF4F5F7),
                        hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,),
                        // suffixIcon: Icon(
                        //   Icons.person_pin_circle_rounded,
                        //   color: Colors.white,
                        // ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
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
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xffC1C7D0)),
                      keyboardType: TextInputType.text,
                      controller: controller.firstnameController.value,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }
                        username = value.replaceAll(" ", "");
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: const Color(0xffF4F5F7),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Last name",
                        border: InputBorder.none,
                        fillColor: const Color(0xffF4F5F7),
                        hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,),
                        // suffixIcon: Icon(
                        //   Icons.person_pin_circle_rounded,
                        //   color: Colors.white,
                        // ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
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
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xffC1C7D0)),
                      keyboardType: TextInputType.text,
                      controller: controller.lastnameController.value,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }
                        username = value.replaceAll(" ", "");
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: const Color(0xffF4F5F7),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Business name",
                        border: InputBorder.none,
                        fillColor: const Color(0xffF4F5F7),
                        hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,),
                        // suffixIcon: Icon(
                        //   Icons.person_pin_circle_rounded,
                        //   color: Colors.white,
                        // ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
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
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xffC1C7D0)),
                      keyboardType: TextInputType.text,
                      controller: controller.businessnameController.value,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }
                        username = value.replaceAll(" ", "");
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: const Color(0xffF4F5F7),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "Business sector",
                              border: InputBorder.none,
                              fillColor: const Color(0xffF4F5F7),
                              hintStyle: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,),
                              // suffixIcon: Icon(
                              //   Icons.person_pin_circle_rounded,
                              //   color: Colors.white,
                              // ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Color(0xffF4F5F7)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Color(0xffF4F5F7)),
                              ),
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
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color(0xffC1C7D0)),
                            keyboardType: TextInputType.text,
                            controller: controller.businesssectorController.value,
                            onChanged: (value) {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "This field can't be empty";
                              }
                              username = value.replaceAll(" ", "");
                              return null;
                            },
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_outlined),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: const Color(0xffF4F5F7),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Referral code",
                        border: InputBorder.none,
                        fillColor: const Color(0xffF4F5F7),
                        hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,),
                        // suffixIcon: Icon(
                        //   Icons.person_pin_circle_rounded,
                        //   color: Colors.white,
                        // ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Color(0xffF4F5F7)),
                        ),
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
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xffC1C7D0)),
                      keyboardType: TextInputType.text,
                      controller: controller.referralController.value,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }
                        username = value.replaceAll(" ", "");
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 200,),
                  Container(
                    height: 60,
                    child: Button(
                      buttoncolor: primarycolour,
                      textcolor: Colors.white,
                      name: "Continue",
                      press: (){
                        Get.to(()=> Businessaddress());
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
