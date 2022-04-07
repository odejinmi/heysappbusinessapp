import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/button.dart';
import '../../../constant/constant.dart';
import '../../../controller/resetpincontroller.dart';

class Textpart extends StatelessWidget {
  final resetpincontroller = Get.put(Resetpincontroller());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: GetX<Resetpincontroller>(
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
                    "Old pin",
                    style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffC1C7D0)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: "e.g 123456",
                      border: InputBorder.none,
                      fillColor: Color(0xffF4F5F7),
                      hintStyle: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xffC1C7D0)),
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.toggle();
                        },
                        icon:
                            Icon(controller.obscureText.value ? Icons.visibility : Icons.visibility_off),
                        color: primarycolour,
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
                      }else if (value.length < 6) {
                        return "Password too short";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "New Pin",
                    style: GoogleFonts.dmSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffC1C7D0)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: "e.g 123456",
                      border: InputBorder.none,
                      fillColor: const Color(0xffF4F5F7),
                      hintStyle: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xffC1C7D0)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggle1();
                          },
                          icon: Icon(
                            controller.obscureText1.value ? Icons.visibility : Icons.visibility_off,
                            color: primarycolour,
                          )),
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
                      }else if (value.length < 6) {
                        return "Password too short";
                      }
                      return null;
                    },
                  ),
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
                    height: 150,
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
