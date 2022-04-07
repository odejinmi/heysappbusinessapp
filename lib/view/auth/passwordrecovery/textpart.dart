import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/button.dart';
import '../../../constant/constant.dart';
import '../../../controller/passwordrecoverycontroller.dart';

class Textpart extends StatelessWidget{
  final passwordrecoverycontroller = Get.put(Passwordrecoverycontroller());


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: GetX<Passwordrecoverycontroller>(
        builder: (controller) {
          return Form(
            key: controller.formKey.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: controller.buttonposition.value ? "Email Address" : "Phone Number",
                              border: InputBorder.none,
                              fillColor: const Color(0xffF4F5F7),
                              hintStyle: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              // prefix: Text(
                              //   change ? "" : "+234",
                              //   style: GoogleFonts.dmSans(
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: 16,
                              //   ),
                              // ),
                              // enabledBorder: const OutlineInputBorder(
                              //   borderRadius: mcd-ty7893ir32d mcd-470erjeb mcdzdvjfqw
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
                    )),
                const SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                      controller.buttonposition.value = !controller.buttonposition.value;
                  },
                  child: Text(
                    controller.buttonposition.value ? "Phone Number" : "Email Address",
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: primarycolour,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 85,
                ),
                SizedBox(
                  height: 70,
                  child: Button(
                    name: "Send Code",
                    textcolor: Colors.white,
                    buttoncolor: primarycolour,
                    loader: loadingWidget,
                    isloading: controller.isLoading.value,
                    fullwidth: true,
                    press: () {
                      if (controller.formKey.value.currentState!.validate()) {
                        controller.initiate(context);
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
