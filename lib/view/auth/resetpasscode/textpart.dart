import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heysappbusiness/controller/resetpasscodecontroller.dart';

import '../../../constant/button.dart';
import '../../../constant/constant.dart';

class Textpart extends StatelessWidget {
  final resetpasscodecontroller = Get.put(Resetpasscodecontroller());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: GetX<Resetpasscodecontroller>(
        builder: (controller) {
          return Form(
            key: controller.formKey.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffC1C7D0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: ".................",
                        border: InputBorder.none,
                        fillColor: const Color(0xffF4F5F7),
                        hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: const Color(0xffC1C7D0)),
                        // suffixIcon: Icon(
                        //   Icons.person_pin_circle_rounded,
                        //   color: Colors.white,
                        // ),
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.lock_outline),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
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
                      controller: controller.emailController1.value,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }else if (value.length < 8) {
                          return "Password too short";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Confirm Password",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffC1C7D0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: ".................",
                        border: InputBorder.none,
                        fillColor: const Color(0xffF4F5F7),
                        hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: const Color(0xffA7A7A7)),
                        // suffixIcon: Icon(
                        //   Icons.person_pin_circle_rounded,
                        //   color: Colors.white,
                        // ),
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.lock_outline),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
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
                      controller: controller.emailController.value,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }else if (value.length < 8) {
                          return "Password too short";
                        }else if (value != controller.emailController.value.text) {
                          return "Password not match";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextFormField(
                //   textAlign: TextAlign.start,
                //   decoration: InputDecoration(
                //     hintText: "e.g 123456",
                //     border: InputBorder.none,
                //     fillColor: const Color(0xffF4F5F7),
                //     hintStyle: GoogleFonts.dmSans(
                //         fontWeight: FontWeight.w400,
                //         fontSize: 15,
                //         color: const Color(0xffC1C7D0)),
                //     suffixIcon: IconButton(
                //         onPressed: () {
                //           _toggle1();
                //         },
                //         icon: Icon(
                //           obscureText1 ? Icons.visibility : Icons.visibility_off,
                //           color: primarycolour,
                //         )),
                //     enabledBorder: const OutlineInputBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(15.0)),
                //       borderSide: BorderSide(color: Color(0xffF4F5F7)),
                //     ),
                //     focusedBorder: const OutlineInputBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(15.0)),
                //       borderSide: BorderSide(color: Color(0xffF4F5F7)),
                //     ),
                //     // errorBorder: OutlineInputBorder(
                //     //   borderRadius:
                //     //   BorderRadius.all(Radius.circular(15.0)),
                //     //   borderSide: BorderSide(color: Colors.white),
                //     // ),
                //     // focusedErrorBorder: OutlineInputBorder(
                //     //   borderRadius:
                //     //   BorderRadius.all(Radius.circular(15.0)),
                //     //   borderSide: BorderSide(color: Colors.white),
                //     // ),
                //   ),
                //   style: GoogleFonts.dmSans(
                //       fontWeight: FontWeight.w400,
                //       fontSize: 15,
                //       color: const Color(0xffC1C7D0)),
                //   keyboardType: TextInputType.text,
                //   controller: emailController1,
                //   onChanged: (value) {},
                //   validator: (value) {
                //     if (value != null) {
                //       return "This field can't be empty";
                //     }
                //     return null;
                //   },
                // ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 50,
                  child: Button(
                    name: "Done",
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
                  height: 200,
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
