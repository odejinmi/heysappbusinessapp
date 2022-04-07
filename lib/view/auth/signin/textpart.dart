import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/button.dart';
import '../../../constant/constant.dart';
import '../../../controller/signincontroller.dart';
import '../passwordrecovery/passwordrecovery.dart';
import '../selectcountry.dart';

class Textpart extends StatelessWidget {
  final signincontroller = Get.put(Signincontroller());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: GetX<Signincontroller>(
        builder: (controller) {
          return Form(
            key: controller.formKey.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Email/Username/Phone Number",
                  style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffC1C7D0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/img/phone.png",
                        height: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextFormField(
                          autofocus: true,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: "(+234)123 456 789",
                            border: InputBorder.none,
                            fillColor: const Color(0xffF4F5F7),
                            hintStyle: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color(0xffC1C7D0)),
                            // enabledBorder: const OutlineInputBorder(
                            //   borderRadius:
                            //   BorderRadius.all(Radius.circular(15.0)),
                            //   borderSide: BorderSide(color: Color(0xffF4F5F7)),
                            // ),
                            // focusedBorder: const OutlineInputBorder(
                            //   borderRadius:
                            //   BorderRadius.all(Radius.circular(15.0)),
                            //   borderSide: BorderSide(color: Color(0xffF4F5F7)),
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
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: const Color(0xffC1C7D0)),
                          keyboardType: TextInputType.text,
                          controller: controller.emailController.value,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This field can't be empty";
                            }
                            return null;
                          },
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffC1C7D0)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.lock_outline,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: "...............",
                            border: InputBorder.none,
                            fillColor: const Color(0xffF4F5F7),
                            hintStyle: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                            // enabledBorder: const OutlineInputBorder(
                            //   borderRadius:
                            //   BorderRadius.all(Radius.circular(15.0)),
                            //   borderSide: BorderSide(color: Color(0xffF4F5F7)),
                            // ),
                            // focusedBorder: const OutlineInputBorder(
                            //   borderRadius:
                            //   BorderRadius.all(Radius.circular(15.0)),
                            //   borderSide: BorderSide(color: Color(0xffF4F5F7)),
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
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: const Color(0xffC1C7D0)),
                          keyboardType: TextInputType.text,
                          controller: controller.passwordController.value,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This field can't be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  height: 60,
                  child: Button(
                    name: "SIGN IN",
                    fullwidth: true,
                    textcolor: Colors.white,
                    buttoncolor: primarycolour,
                    isloading: controller.isLoading.value,
                    loader: loadingWidget,
                    press: () {
                      if (controller.formKey.value.currentState!.validate()) {
                        controller.initiate(context);
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: Button(
                    name: "Create an account",
                    fullwidth: true,
                    textcolor: primarycolour,
                    buttoncolor: const Color(0xffF4F5F7),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Selectcountry();
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Passwordrecovery();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Forgot your credentials?",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, color: primarycolour),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
