import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/personalinfocontroller.dart';

class Personalinfo extends StatelessWidget {
  final personalinfocontroller = Get.put(Personalinfocontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/img/intro1.png'),
          ),
        ),
        child: GetX<Personalinfocontroller>(
          builder: (controller) {
            return Column(
              children:  [
                Text("Personal Info",
                  style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 27),
                ),
                Text("We ask your personal information to verify your application",
                  style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 27),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: "@josephakanji",
                      border: InputBorder.none,
                      fillColor: Color(0xffF4F5F7),
                      hintStyle: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xffC1C7D0)),
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
                    controller: controller.emailController.value,
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
              ],
            );
          }
        ),
      ),
    );
  }
}
